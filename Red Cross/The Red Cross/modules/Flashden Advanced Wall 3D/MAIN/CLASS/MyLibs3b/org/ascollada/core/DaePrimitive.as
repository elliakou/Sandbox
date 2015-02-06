/*
 * Copyright 2007 (c) Tim Knip, ascollada.org.
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */
 
package org.ascollada.core {

	import flash.utils.Dictionary;
	import org.ascollada.ASCollada;
	import org.ascollada.utils.Logger;

	public class DaePrimitive extends DaeEntity {
		
		/** parent element */
		public var mesh:DaeMesh;
		
		/** The number of line primitives. required */
		public var count:uint;
		
		/** materialname */
		public var material:String;
						
		/** vcount use by polygon primitives */
		public var vcount:Array;
		
		/** primitive type */
		public var type:String;
		
		/**
		 * 
		 * @param	mesh
		 * @param	node
		 * @return
		 */
		public function DaePrimitive( mesh:DaeMesh, node:XML = null ):void {
			this.mesh = mesh;
			super(node);
		}
		
		/** normals */
		public function get normals():Array { return getFirstInput("NORMAL"); }
		
		/** vertex indices */
		public function get vertices():Array { return getFirstInput("VERTEX"); }
		
		/**
		 * gets the texcoords by set.
		 * 
		 * @param	setID
		 * @return
		 */
		public function getTexCoords( setID:uint = 0 ):Array {
			return getInputBySet("TEXCOORD", setID);
		}
		
		/**
		 * 
		 * @return
		 */
		override public function read( node:XML ):void {
			
			if( !checkNode(node) )
				throw new Error( "expected a primitive element!" );
			if( !this.mesh )
				throw new Error( "parent-element 'mesh' or 'convex_mesh' not set!" );
				
			super.read(node);
			
			this.type = String( node.localName() );
			
			this.count = getAttributeAsInt( node, ASCollada.DAE_COUNT_ATTRIBUTE );
			this.material = getAttribute( node, ASCollada.DAE_MATERIAL_ATTRIBUTE );
			this.vcount = new Array();

			_inputs = new Dictionary();
			
			var parent:XML = node.parent() as XML;
			
			switch( String(parent.localName()) ) {
				case ASCollada.DAE_MESH_ELEMENT:
					parse( node );
					break;
				case ASCollada.DAE_CONVEX_MESH_ELEMENT:
					break;
				default:
					break;
			}
		}
		
		/**
		 * 
		 * @param	node
		 * @return
		 */		
		protected function parse( node:XML ):void {
			var p:Array = getInts( getNode(node, ASCollada.DAE_POLYGON_ELEMENT) );
			var vcountNode:XML = getNode(node, ASCollada.DAE_VERTEXCOUNT_ELEMENT);
			var inputList:XMLList = getNodeList( node, ASCollada.DAE_INPUT_ELEMENT );
			var inputs:Array = new Array();
			var input:DaeInput;
			var maxoffset:uint = 0;

			if( vcountNode is XML )
				this.vcount = getInts( vcountNode );

			for each( var inputNode:XML in inputList ) {
				input = new DaeInput( inputNode );
				maxoffset = Math.max(maxoffset, input.offset + 1);
				inputs.push( input );
				_inputs[ input ] = new Array();
			}
			
			for( var i:int = 0; i < p.length; i += maxoffset ) {
				for each( input in inputs ) {
					var idx:int = p[i + input.offset];
					var values:Array = mesh.sources[input.source];
					
					switch( input.semantic ) {
						case "VERTEX":
							_inputs[ input ].push( idx );
							break;
						default:
							_inputs[ input ].push( values[idx] );
							break;
					}
				}
			}
		}
		
		/**
		 * 
		 * @param	node
		 * @return
		 */
		private function checkNode( node:XML ):Boolean {
			var name:String = String(node.localName());
			
			return (name == ASCollada.DAE_TRIANGLES_ELEMENT ||
					name == ASCollada.DAE_TRIFANS_ELEMENT ||
					name == ASCollada.DAE_TRISTRIPS_ELEMENT ||
					name == ASCollada.DAE_LINESTRIPS_ELEMENT ||
					name == ASCollada.DAE_LINES_ELEMENT ||
					name == ASCollada.DAE_POLYGONS_ELEMENT ||
					name == ASCollada.DAE_POLYLIST_ELEMENT);
		}

		/**
		 * 
		 * @param	semantic
		 * @return
		 */
		private function getFirstInput( semantic:String ):Array
		{
			for( var input:* in _inputs ) 
			{
				if( input.semantic == semantic )
					return _inputs[ input ];
			}
			return null;
		}
		
		/**
		 * 
		 * @param	semantic
		 * @return
		 */
		private function getInputBySet( semantic:String, setID:int ):Array
		{
			if( getInputCount(semantic) == 1 )
				return getFirstInput(semantic);
			for( var input:* in _inputs ) {
				if( input.semantic == semantic && input.setId == setID )
					return _inputs[ input ];
			}
			return new Array();
		}
		
		/**
		 * 
		 * @param	semantic
		 * @return
		 */
		private function getInputCount( semantic:String ):uint
		{
			var cnt:uint = 0;
			for( var input:* in _inputs ) 
			{
				if( input.semantic == semantic )
					cnt++;
			}
			return cnt;
		}
				
		private var _inputs:Dictionary;
	}	
}

﻿/*HLayout.asCreated by Alexander Ruiz Ponce on 5/10/09.Copyright 2009 goTo! Multimedia. All rights reserved.*/package gT.display.layout{		import flash.display.Sprite;	import flash.events.Event;		public class HVLayout extends Sprite {				private var __gab:int;		private var __orientation:String = "horizontal";				public function HVLayout ():void {			addEventListener(Event.ADDED, draw);			addEventListener(Event.REMOVED, draw);		}				public function draw (e:Event = null):void		{			var i:uint = 0;			var l:uint = numChildren;			for (i; i < l; i++) 			{				var child = getChildAt(i);				if (i) {										var previousChild = getChildAt(i-1);										if(orientation == "horizontal"){						child.x = previousChild.width + previousChild.x + __gab;					}else{						child.y = previousChild.height + previousChild.y + __gab;					}									}			}		}				//////////////////////////////////////////////////////////		//		// Setters && Getters		//		//////////////////////////////////////////////////////////		public function set gab (value:Number):void		{			__gab = value;			draw();		}				public function get gab ():Number		{			return __gab;		}				public function set orientation (value:String):void		{			__orientation = value;			draw();		}				public function get orientation ():String		{			return __orientation;		}	}}
﻿/*USO:var mytarget:Sprite = new Sprite();var picture:SnapShot = new SnapShot(mytarget);addChild(picture);AUTOR:Alexander Ruiz / fenixkim*/package gT.display {		import flash.display.Bitmap;	import flash.display.BitmapData;	import flash.display.DisplayObject;	import flash.display.Sprite;	public class SnapShot extends Bitmap {				private var __target:DisplayObject;		private var __bmpData:BitmapData;		private var __area:Object;				public function SnapShot (target:DisplayObject, w:uint = undefined, h:uint = undefined, smoothing:Boolean = true, transparent:Boolean = true) {			__target = target;						__area = new Object();			__area.width = (w) ? w : __target.width;			__area.height = (h) ? h : __target.height;						// respeta la escala original			var clon = new BitmapData(__area.width/__target.scaleX, __area.height/__target.scaleY, true, 0xffffff);			clon.draw(__target);			var bmpClon:Bitmap = new Bitmap(clon);			bmpClon.width = __area.width;			bmpClon.height = __area.height;			var holderTemp = new Sprite();			holderTemp.addChild(bmpClon);			//						__bmpData = new BitmapData(__area.width, __area.height, transparent, 0xffffff);			__bmpData.draw(holderTemp);						super(__bmpData, "auto", smoothing);						clon = null;			bmpClon = null;			holderTemp = null;			__target = null;		}	}}
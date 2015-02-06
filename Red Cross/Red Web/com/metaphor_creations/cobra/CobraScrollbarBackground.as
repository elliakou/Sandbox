﻿//**************************************************\\//**************************************************\\//** TITLE: CobraScrollbarBackground.as		 	  **\\//** VERSION: 1.0  								  **\\//** LAST UPDATE: July 25, 2009    	       	      **\\//**************************************************\\//**************************************************\\//** CREATED BY: Metaphor Creations               **\\//** joe@metaphorcreations.com               	  **\\//** www.flashden.net/user/JoeMC                  **\\//** www.metaphorcreations.com               	  **\\//**************************************************\\//**************************************************\\package com.metaphor_creations.cobra {	import flash.display.*;	import flash.events.Event;	import flash.filters.DropShadowFilter;		public class CobraScrollbarBackground extends Sprite {				private var bgWidth:Number;		private var bgHeight:Number;		private var bgFillColor:Number;				private var bgDropShadow = [new DropShadowFilter(0, 45, 0, .25, 5, 5)];				// Setup the constructor when the class is created		public function CobraScrollbarBackground(w:Number, h:Number):void {						// Save the variables			bgWidth = w;			bgHeight = h;			bgFillColor = 0xF1F2F2;						// Set the attributes			buttonMode = false;			mouseChildren = false;			// Draw the background			drawBGBackground();						// Add the dropshadow			this.filters = bgDropShadow;		}												//**********************************************************************		// Functions		//**********************************************************************				private function drawBGBackground(_colors:Array = null):void {						// Create a variable to store the colors			var colors:Array = _colors;						// If no colors where passed, use the default colors			if (colors == null) colors = [bgFillColor];						// Create a variable for the rounded rect			var roundness:Number;			if (bgWidth < bgHeight) roundness = bgWidth else roundness = bgHeight;			// Draw the graphics			graphics.clear();			graphics.beginFill(colors[0]); 			graphics.drawRoundRect(0,0,bgWidth,bgHeight,roundness,roundness);			graphics.endFill();						// Dispatch a heightChange			dispatchEvent(new Event("scrollbarBGChanged"));		}				//**********************************************************************		// Functions		//**********************************************************************												//**********************************************************************		// Setters		//**********************************************************************				public function set fillColor(color:Number):void {						// Save the button fill color			bgFillColor = color;						// Redraw the background			drawBGBackground();		}				public function set setHeight(h:Number):void {			// Save the height			bgHeight = h;						// Redraw the background			drawBGBackground();	        }				public function set setWidth(w:Number):void {			// Save the width			bgWidth = w;						// Redraw the background			drawBGBackground();        }		//**********************************************************************		// Setters		//**********************************************************************	}}
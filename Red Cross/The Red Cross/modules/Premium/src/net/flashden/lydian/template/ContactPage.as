package net.flashden.lydian.template {
	
	import caurina.transitions.Tweener;
	
	import flash.display.MovieClip;
	import flash.events.Event;
		
	public class ContactPage extends MovieClip {
		
		// Page content
		private var content:ContactPageContent;
		
		// A preloader to be displayed during loading process
		private var preloader:Preloader = new Preloader();
		
		public function ContactPage(dataXML:String) {
			
			// Add preloader
			preloader.x = (ConfigManager.CONTENT_HOLDER_WIDTH / 2) - ConfigManager.CONTENT_HOLDER_LEFT_MARGIN;
			preloader.y = (ConfigManager.CONTENT_HOLDER_HEIGHT / 2) - ConfigManager.CONTENT_HOLDER_TOP_MARGIN;
			addChild(preloader);
			
			// Create the content
			content = new ContactPageContent(dataXML);
			content.alpha = 0;
			content.addEventListener(XMLLoader.XML_LOADED, onDataXMLLoaded, false, 0, true);
			addChild(content);
			
		}
		
		/**
		 * This method is called when data.xml is loaded.		 
		 */
		public function onDataXMLLoaded(evt:Event):void {
			
			// Hide preloader
			Tweener.addTween(preloader, {alpha:0, time:1, onComplete:onPageLoaded});
			
		}
		
		/**
		 * Removes preloader and fades the content in.
		 */
		public function onPageLoaded():void {
			
			// Remove preloader
			removeChild(preloader);
			Tweener.addTween(content, {alpha:1, time:1});
			
		}
		
	}
	
}		
<?xml version="1.0" encoding="ISO-8859-1"?>
<xmlObject>
	<topMargin>0</topMargin>
	<bottomMargin>0</bottomMargin>
	<!--
		alignX Options 
		The alignX is the distance from the left your page will start
		Static X    				  eg.  <alignX>175</alignX>      	(this will make your content start 175 pixels from the left)
		Left aligned X    	  eg.  <alignX>left</alignX>    		(this will make your content be left aligned)
		Center aligned X      eg.  <alignX>center</alignX>  		(this will make your content be centered)
		Right aligned X    	  eg.  <alignX>right</alignX>			(this will make your content be right aligned)
	-->
	<alignX>center</alignX><!--Horizontal Alignment-->
	<!--
		alignY Options 
		The alignY is the distance from the top your page will start
		Static Y    				  eg.  <alignY>175</alignY>      	(this will make your content start 175 pixels from the top)
		Top aligned Y    	  	eg.  <alignY>top</alignY>     	(this will make your content be aligned vertically under the topMargin)
		Bottom aligned Y      eg.  <alignY>bottom<alignY>   	(this will make your content be aligned vertically and sit on the bottomMargin)
		Center aligned Y    	eg.  <alignY>center<alignY>			(this will make your content be aligned vertically between the topMargin and bottomMargin)
	-->
	<alignY>center</alignY><!-- Vertical Alignment-->
	
	
	<contentWidth>414</contentWidth>
	<!--<contentHeight>1505</contentHeight>-->
	<contentHeight>147</contentHeight>
	<contentBgColor>0x0C0C0C</contentBgColor>
	<contentBgOpacity>0</contentBgOpacity>
	
	
	<useHoverScroll>false</useHoverScroll>
	<useManualScroll>true</useManualScroll>
	
	<!-- 	These settings apply 
				if useManualScroll is true 
				and useHoverScroll is false   -->
	<scrollBarWidth>19</scrollBarWidth>
	<scrollBarHeight>200</scrollBarHeight>
	<scrollBaseColor>0xffffff</scrollBaseColor>
	<addTiledPatternToScrollBase>false</addTiledPatternToScrollBase>
	<patternUrl>site_images/patterns/edgePattern.gif</patternUrl>
	<scrollBaseOpacity>1</scrollBaseOpacity>
	<scrollerColor>0x000000</scrollerColor>
	<scrollerOpacity>1</scrollerOpacity>
	
	
	
	<displayImages>true</displayImages>
	<displayHtmlArticles>true</displayHtmlArticles>
	
	<image>
		<x>0</x>
		<y>0</y>
		<imageURL>site_images/pages/videoBackground/videoBackground.gif</imageURL>
	</image>

	
</xmlObject>                                                                                                                                                                                        ) ;  
 	 T w e e n L i t e . t o ( v o l u m e B u t t o n . v o l B a s e , 0 , { t i n t : v o l u m e B a r C o l o r } ) ;  
 	  
 	 / / C o n t r o l   B u t t o n s  
 	 p l a y P a u s e C l r   =   u i n t ( x m l . p l a y P a u s e C l r ) ;  
 	 p l a y P a u s e O v e r C l r   =   u i n t ( x m l . p l a y P a u s e O v e r C l r ) ;  
 	 s t o p C l r   =   u i n t ( x m l . s t o p C l r ) ;  
 	 s t o p O v e r C l r   =   u i n t ( x m l . s t o p O v e r C l r ) ;  
 	 r e v e r s e C l r   =   u i n t ( x m l . r e v e r s e C l r ) ;  
 	 r e v e r s e O v e r C l r   =   u i n t ( x m l . r e v e r s e O v e r C l r ) ;  
 	 f o r w a r d C l r   =   u i n t ( x m l . f o r w a r d C l r ) ;  
 	 f o r w a r d O v e r C l r   =   u i n t ( x m l . f o r w a r d O v e r C l r ) ;  
 	 T w e e n L i t e . t o ( p l a y B u t t o n , 0 , { t i n t : p l a y P a u s e C l r } ) ;  
 	 T w e e n L i t e . t o ( s t o p B u t t o n , 0 , { t i n t : s t o p C l r } ) ;  
 	 T w e e n L i t e . t o ( f o r w a r d B u t t o n , 0 , { t i n t : r e v e r s e C l r } ) ;  
 	 T w e e n L i t e . t o ( r e v e r s e B u t t o n , 0 , { t i n t : f o r w a r d C l r } ) ;  
 	  
 	 s e t I n i t i a l V o l u m e S c r u b X ( ) ;  
 	 c r e a t e P l a y l i s t T r a c k s ( ) ;  
 	 p o p u l a t e N o w P l a y i n g ( ) ;  
 	 i f ( p a r e n t . p a r e n t   ! =   s t a g e ) {  
 	 	 v o l u m e L e v e l   =   M o v i e C l i p ( p a r e n t . p a r e n t ) . v o l u m e L e v e l ;  
 	 	 u p d a t e S l i d e r ( v o l u m e L e v e l )  
 	 	 M o v i e C l i p ( p a r e n t . p a r e n t ) . u p d a t e V o l u m e L e v e l ( v o l u m e L e v e l ) ;  
 	 	 i f ( ! M o v i e C l i p ( p a r e n t . p a r e n t ) . m u t e A u d i o ) {  
 	 	 	 l o a d T r a c k ( ) ;  
 	 	 }  
 	 }  
 	 T w e e n L i t e . t o ( b g , 0 , { t i n t : b g C o l o r } ) ;  
 	  
 }  
  
 f u n c t i o n   c r e a t e P l a y l i s t T r a c k s ( ) : v o i d {  
 	 i f ( i   <   n u m b e r O f T r a c k s ) {  
 	 	 p l a y l i s t T r k   =   n e w   p l a y l i s t T r a c k ( ) ;  
 	 	 p l a y l i s t T r k . x   =   0 ;  
 	 	 p l a y l i s t T r k . y   =   s t a r t i n g Y ;  
 	 	 p l a y l i s t T r k . n a m e   =   " p l a y l i s t "   +   i . t o S t r i n g ( ) ;  
 	 	 p l a y l i s t T r k . d a t a   =   i ;  
 	 	 p l a y l i s t T r k . b u t t o n M o d e   =   t r u e ;  
 	 	 p l a y l i s t T r k . m o u s e C h i l d r e n   =   f a l s e ;  
 	 	 p l a y l i s t T r k . t r a c k A r t i s t . t e x t   =   s o n g l i s t . a r t i s t . t e x t ( ) [ i ] ;  
 	 	 v a r   t i t l e X : i n t   =   M a t h . c e i l ( p l a y l i s t T r k . t r a c k A r t i s t . t e x t W i d t h   +   p l a y l i s t T r k . t r a c k A r t i s t . x   +   1 0 ) ;  
 	 	 p l a y l i s t T r k . t r a c k T i t l e . x   =   t i t l e X ;  
 	 	 p l a y l i s t T r k . t r a c k T i t l e . t e x t   =   s o n g l i s t . t i t l e . t e x t ( ) [ i ] ;  
 	 	 T w e e n L i t e . t o ( p l a y l i s t T r k . b g , 0 , { t i n t : t r a c k B g C o l o r } ) ;  
 	 	 p l a y l i s t . a d d C h i l d ( p l a y l i s t T r k ) ;  
 	 	 T w e e n L i t e . t o ( p l a y l i s t T r k . t r a c k A r t i s t , 0 , { t i n t : a r t i s t T e x t C l r } ) ;  
 	 	 T w e e n L i t e . t o ( p l a y l i s t T r k . t r a c k T i t l e , 0 , { t i n t : t i t l e T e x t C l r } ) ;  
 	 	 p l a y l i s t T r k . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O V E R ,   t r a c k O v e r , f a l s e , 0 , t r u e ) ;  
 	 	 p l a y l i s t T r k . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O U T ,   t r a c k O u t , f a l s e , 0 , t r u e ) ;  
 	 	 p l a y l i s t T r k . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . C L I C K ,   g e t T r a c k , f a l s e , 0 , t r u e ) ;  
 	 	 g e t N e x t B u t t o n ( ) ;  
 	 }  
 }  
  
 f u n c t i o n   g e t N e x t B u t t o n ( ) : v o i d {  
 	 i + + ;  
 	 s t a r t i n g Y   + =   1 9 ;  
 	 c r e a t e P l a y l i s t T r a c k s ( ) ;  
 }  
  
 f u n c t i o n   p o p u l a t e N o w P l a y i n g ( ) {  
 	 / / p o p u l a t e   N o w   P l a y i n g   F i e l d s   w i t h   f i r s t   t r a c k   i n f o  
 	 n o w P l a y i n g T i t l e . t e x t   =   s o n g l i s t . a l b u m . t e x t ( ) [ i n d e x ]   +   "       "   +   s o n g l i s t . a r t i s t . t e x t ( ) [ i n d e x ]   +   "       "   +   s o n g l i s t . t i t l e . t e x t ( ) [ i n d e x ] ;  
 	 / / p o p u l a t e   t h u m b n a i l  
 	 v a r   t h u m b U R L : S t r i n g   =   s o n g l i s t . t h u m b . t e x t ( ) [ i n d e x ] ;  
 	 u r l   =   n e w   U R L R e q u e s t ( t h u m b U R L ) ;  
 	 t h u m b L o a d e r . c o n t e n t L o a d e r I n f o . a d d E v e n t L i s t e n e r ( E v e n t . C O M P L E T E ,   t h u m b L o a d e d ,   f a l s e ,   0 ,   t r u e ) ;  
 	 t h u m b L o a d e r . l o a d ( u r l ) ;  
 }  
  
 f u n c t i o n   t h u m b L o a d e d ( e v e n t : E v e n t ) : v o i d {  
 	 / / c l e a n   u p  
 	 t h u m b L o a d e r . r e m o v e E v e n t L i s t e n e r ( E v e n t . C O M P L E T E ,   t h u m b L o a d e d ) ;  
 	 t h u m b n a i l . b i t m a p D a t a   =   B i t m a p ( e v e n t . t a r g e t . c o n t e n t ) . b i t m a p D a t a ;  
 	 i f ( f i r s t L o a d ) {  
 	 	 a d d C h i l d ( t h u m b n a i l ) ;  
 	 	 s e t C h i l d I n d e x ( t h u m b n a i l , n u m C h i l d r e n - n u m C h i l d r e n ) ;  
 	 	 f i r s t L o a d   =   f a l s e ;  
 	 	 s e t C h i l d I n d e x ( t h u m b n a i l , g e t C h i l d I n d e x ( a l b u m I n f o B g ) - 1 ) ;  
 	 }  
 }  
  
  
 / / S O U N D   F U N C T I O N S  
  
 f u n c t i o n   l o a d T r a c k ( ) : v o i d {  
 	 / / s w i t h   f r o m   p l a y   t o   p a u s e   b u t t o n  
 	 p l a y B u t t o n . g o t o A n d S t o p ( 2 ) ;  
 	 s N d   =   n e w   S o u n d ( n e w   U R L R e q u e s t ( s o n g l i s t [ i n d e x ] . u r l ) ) ;  
 	 s N d . a d d E v e n t L i s t e n e r ( E v e n t . O P E N ,   o p e n S o u n d , f a l s e , 0 , t r u e ) ;  
 }  
  
  
 f u n c t i o n   o p e n S o u n d ( e : E v e n t ) : v o i d   {  
 	 s N d . r e m o v e E v e n t L i s t e n e r ( E v e n t . O P E N ,   o p e n S o u n d ) ;  
 	 s N d T r a n s f o r m . v o l u m e   =   v o l u m e L e v e l ;  
 	 C H N L   =   s N d . p l a y ( 0 , 1 , s N d T r a n s f o r m ) ;  
 	 s t a g e . a d d E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e , f a l s e , 0 , t r u e ) ;  
 	 C H N L . a d d E v e n t L i s t e n e r ( E v e n t . S O U N D _ C O M P L E T E ,   s o u n d C o m p l e t e ) ;  
 	 s N d O p e n   =     t r u e ;  
 }  
  
 f u n c t i o n   s o u n d C o m p l e t e ( e : E v e n t ) : v o i d {  
 	 s N d O p e n   =   f a l s e ;  
 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e ) ;  
 	 C H N L . r e m o v e E v e n t L i s t e n e r ( E v e n t . S O U N D _ C O M P L E T E ,   s o u n d C o m p l e t e ) ;  
 	 s N d   =   n u l l ;  
 	 C H N L . s t o p ( ) ;  
 	 e l a p s e d T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 t o t a l T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 s t o p C l i c k e d   =   t r u e ;  
 	 g e t T r a c k ( n u l l ) ;  
 }  
  
 f u n c t i o n   E n t e r T h e F r a m e ( e : E v e n t ) : v o i d   {  
 	 / / u p d a t e   s o u n d   p r o g r e s s  
 	 t o t a l   =   s N d . b y t e s T o t a l ;  
 	 / / p o p u l a t e   t i m e   f i e l d s  
 	 i f   ( s N d O p e n   = =   t r u e     & &   t o t a l   >   0 )   {  
 	 	 p o p u l a t e T o t a l T i m e ( ) ;  
 	 	 p o p u l a t e E l a p s e d T i m e ( ) ;  
 	 }    
 }  
  
 f u n c t i o n   p o p u l a t e T o t a l T i m e ( ) : v o i d {  
 	 v a r   t o t a l S e c o n d s : N u m b e r   =   s N d . l e n g t h   /   1 0 0 0 ;  
 	 v a r   t o t a l M i n u t e s : N u m b e r   =   M a t h . f l o o r ( t o t a l S e c o n d s   /   6 0 ) ;  
 	 v a r   s e c o n d s L e s s M i n u t e s : N u m b e r   =   M a t h . f l o o r ( t o t a l S e c o n d s   %   6 0 ) ;  
 	 v a r   t i m e : S t r i n g   =   t o t a l M i n u t e s   +   " : "   +   ( s e c o n d s L e s s M i n u t e s   <   1 0   ?   " 0 "   :   " " )   +   s e c o n d s L e s s M i n u t e s ;  
 	 t o t a l T i m e . t e x t   =   t i m e ;  
 }  
  
 f u n c t i o n   p o p u l a t e E l a p s e d T i m e ( ) : v o i d {  
 	 v a r   t o t a l S e c o n d s : N u m b e r   =   C H N L . p o s i t i o n / 1 0 0 0 ;  
 	 v a r   m i n u t e s : N u m b e r   =   M a t h . f l o o r ( ( C H N L . p o s i t i o n / 1 0 0 0 ) / 6 0 ) ;  
 	 v a r   s e c o n d s : N u m b e r   =   M a t h . f l o o r ( t o t a l S e c o n d s ) % 6 0 ;  
 	 v a r   f i n a l S e c n o n d s : S t r i n g ;  
 	 i f   ( s e c o n d s < 1 0 )   {  
 	 	 f i n a l S e c n o n d s   =   S t r i n g ( " 0 "   +   s e c o n d s ) ;  
 	 }    
 	 e l s e   {  
 	 	 f i n a l S e c n o n d s   =   S t r i n g ( s e c o n d s ) ;  
 	 }  
 	 i f   ( m i n u t e s < 1 0 )   {  
 	 	 e l a p s e d T i m e . t e x t   =   S t r i n g ( " 0 "   +   m i n u t e s + " : " +   f i n a l S e c n o n d s ) ;  
 	 }    
 	 e l s e   {  
 	 	 e l a p s e d T i m e . t e x t   =   S t r i n g (   m i n u t e s   +   " : "   +   f i n a l S e c n o n d s ) ;  
 	 }  
 }  
  
 f u n c t i o n   p l a y C l i c k ( e : E v e n t ) : v o i d {  
 	 i f ( i n i t i a l L o a d ) {  
 	 	 v a r   t h i s T r a k M c : M o v i e C l i p   =   M o v i e C l i p ( p l a y l i s t . g e t C h i l d B y N a m e ( " p l a y l i s t "   +   i n d e x . t o S t r i n g ( ) ) ) ;  
 	 	 t h i s T r a k M c . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O V E R ,   t r a c k O v e r ) ;  
 	 	 t h i s T r a k M c . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O U T ,   t r a c k O u t ) ;  
 	 	 T w e e n L i t e . t o ( t h i s T r a k M c . b g , . 1 , { a l p h a : 0 } ) ;  
 	 	 T w e e n L i t e . t o ( t h i s T r a k M c . t r a c k A r t i s t , 0 , { t i n t : a r t i s t O v e r T e x t C l r } ) ;  
 	 	 T w e e n L i t e . t o ( t h i s T r a k M c . t r a c k T i t l e , 0 , { t i n t : t i t l e O v e r T e x t C l r } ) ;  
 	 	 l o a d T r a c k ( ) ;  
 	 	 i n i t i a l L o a d   =   f a l s e ;  
 	 	 r e t u r n ;  
 	 }  
 	 i f ( p a u s e C l i c k e d ) {  
 	 	 / / p a u s e   a u d i o  
 	 	 p o s   =     C H N L . p o s i t i o n ;  
 	 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e ) ;  
 	 	 C H N L . s t o p ( ) ;  
 	 	 / / s w i t c h   t o   p l a y   b u t t o n  
 	 	 p l a y B u t t o n . g o t o A n d S t o p ( 1 ) ;  
 	 	 p a u s e C l i c k e d   =   f a l s e ;  
 	 }  
 	 e l s e   i f ( ! s t o p C l i c k e d ) {  
 	 	 / / u n p a u s e   a u d i o  
 	 	 s N d T r a n s f o r m . v o l u m e   =   v o l u m e L e v e l ;  
 	 	 C H N L   =   s N d . p l a y ( p o s , 1 , s N d T r a n s f o r m ) ;  
 	 	 s t a g e . a d d E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e , f a l s e , 0 , t r u e ) ;  
 	 	 / / s w i t c h   t o   p a u s e   b u t t o n  
 	 	 p l a y B u t t o n . g o t o A n d S t o p ( 2 ) ;  
 	 	 p a u s e C l i c k e d   =   t r u e ;  
 	 }  
 	 i f ( s t o p C l i c k e d ) {  
 	 	 p a u s e C l i c k e d   =   t r u e ;  
 	 	 s t o p C l i c k e d   =   f a l s e ;  
 	 	 l o a d T r a c k ( ) ;  
 	 }  
 }  
  
 f u n c t i o n   s t o p C l i c k ( e : E v e n t ) : v o i d {  
 	 i f ( s N d ) {  
 	 	 i f ( s N d . h a s E v e n t L i s t e n e r ( E v e n t . O P E N ) ) {  
 	 	 	 s N d . r e m o v e E v e n t L i s t e n e r ( E v e n t . O P E N ,   o p e n S o u n d ) ;  
 	 	 	 s N d   =   n u l l ;  
 	 	 }  
 	 	 e l s e   i f ( s N d O p e n ) {  
 	 	 	 s N d O p e n   =   f a l s e ;  
 	 	 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e ) ;  
 	 	 	 C H N L . r e m o v e E v e n t L i s t e n e r ( E v e n t . S O U N D _ C O M P L E T E ,   s o u n d C o m p l e t e ) ;  
 	 	 	 t r y {  
 	 	 	 	 s N d . c l o s e ( ) ;  
 	 	 	 }  
 	 	 	 c a t c h ( e r r : E r r o r ) {  
 	 	 	 }  
 	 	 	 s N d   =   n u l l ;  
 	 	 	 C H N L . s t o p ( ) ;  
 	 	 	 e l a p s e d T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 	 	 t o t a l T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 	 	 s t o p C l i c k e d   =   t r u e ;  
 	 	 }  
 	 }  
 	 / / s w i t c h   t o   p l a y   b u t t o n  
 	 p l a y B u t t o n . g o t o A n d S t o p ( 1 ) ;  
 	 s t o p C l i c k e d   =   t r u e ;  
 }  
  
 f u n c t i o n   n e x t C l i c k ( e : E v e n t ) : v o i d {  
 	 i f ( s N d ) {  
 	 	 i f ( s N d . h a s E v e n t L i s t e n e r ( E v e n t . O P E N ) ) {  
 	 	 	 s N d . r e m o v e E v e n t L i s t e n e r ( E v e n t . O P E N ,   o p e n S o u n d ) ;  
 	 	 	 s N d   =   n u l l ;  
 	 	 }  
 	 	 e l s e   i f ( s N d O p e n ) {  
 	 	 	 s N d O p e n   =   f a l s e ;  
 	 	 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e ) ;  
 	 	 	 C H N L . r e m o v e E v e n t L i s t e n e r ( E v e n t . S O U N D _ C O M P L E T E ,   s o u n d C o m p l e t e ) ;  
 	 	 	 t r y {  
 	 	 	 	 s N d . c l o s e ( ) ;  
 	 	 	 }  
 	 	 	 c a t c h ( e r r : E r r o r ) {  
 	 	 	 }  
 	 	 	 s N d   =   n u l l ;  
 	 	 	 C H N L . s t o p ( ) ;  
 	 	 	 e l a p s e d T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 	 	 t o t a l T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 	 	 s t o p C l i c k e d   =   t r u e ;  
 	 	 }  
 	 }  
 	 i f ( e . t a r g e t . n a m e   = =   ' p r e v O v e r ' ) {  
 	 	 p r e v C l i c k   =   t r u e ;  
 	 }  
 	 g e t T r a c k ( n u l l ) ;  
 }  
  
  
 f u n c t i o n   g e t T r a c k ( e : E v e n t ) : v o i d {  
 	 i f ( s N d ) {  
 	 	 i f ( s N d . h a s E v e n t L i s t e n e r ( E v e n t . O P E N ) ) {  
 	 	 	 s N d . r e m o v e E v e n t L i s t e n e r ( E v e n t . O P E N ,   o p e n S o u n d ) ;  
 	 	 	 s N d   =   n u l l ;  
 	 	 }  
 	 	 e l s e   i f ( s N d O p e n ) {  
 	 	 	 s N d O p e n   =   f a l s e ;  
 	 	 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   E n t e r T h e F r a m e ) ;  
 	 	 	 C H N L . r e m o v e E v e n t L i s t e n e r ( E v e n t . S O U N D _ C O M P L E T E ,   s o u n d C o m p l e t e ) ;  
 	 	 	 t r y {  
 	 	 	 	 s N d . c l o s e ( ) ;  
 	 	 	 }  
 	 	 	 c a t c h ( e r r : E r r o r ) {  
 	 	 	 }  
 	 	 	 s N d   =   n u l l ;  
 	 	 	 C H N L . s t o p ( ) ;  
 	 	 	 e l a p s e d T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 	 	 t o t a l T i m e . t e x t   =   " 0 0 : 0 0 " ;  
 	 	 	 s t o p C l i c k e d   =   t r u e ;  
 	 	 }  
 	 }  
 	 p a u s e C l i c k e d   =   t r u e ;  
 	 s t o p C l i c k e d   =   f a l s e ;  
 	 i n i t i a l L o a d   =   f a l s e ;  
 	 / / a d d   o v e r   a n d   o u t   l i s t e n e r s   t o   p r e v i o u s   c l i c k e d   t r a c k   a n d   r e m o v e   h i g h l i g h t i n g  
 	 v a r   p r e v T r a k M c : M o v i e C l i p   =   M o v i e C l i p ( p l a y l i s t . g e t C h i l d B y N a m e ( " p l a y l i s t "   +   i n d e x . t o S t r i n g ( ) ) ) ;  
 	 p r e v T r a k M c . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O V E R ,   t r a c k O v e r , f a l s e , 0 , t r u e ) ;  
 	 p r e v T r a k M c . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O U T ,   t r a c k O u t , f a l s e , 0 , t r u e ) ;  
 	 T w e e n L i t e . t o ( p r e v T r a k M c . b g , 1 , { t i n t : t r a c k B g C o l o r } ) ;  
 	 T w e e n L i t e . t o ( p r e v T r a k M c . t r a c k A r t i s t , 0 , { t i n t : a r t i s t T e x t C l r } ) ;  
 	 T w e e n L i t e . t o ( p r e v T r a k M c . t r a c k T i t l e , 0 , { t i n t : t i t l e T e x t C l r } ) ;  
 	 / / u p d a t e   i n d e x   t o   t h i s   t r a c k   c l i c k e d   e . t a r g e t . d a t a   a n d   r e m o v e   o v e r   a n d   o u t   l i s t e n e r s  
 	 i f ( e   ! =   n u l l ) {  
 	 	 i n d e x   =   e . t a r g e t . d a t a ;  
 	 }  
 	 e l s e {  
 	 	 i f ( p r e v C l i c k ) {  
 	 	 	 i n d e x   =   i n d e x   -   1 ;  
 	 	 	 p r e v C l i c k   =   f a l s e ;  
 	 	 }  
 	 	 e l s e {  
 	 	 	 i n d e x   =   i n d e x   +   1 ;  
 	 	 }  
 	 	 i f ( i n d e x   > =   n u m b e r O f T r a c k s )   {  
 	 	 	 i n d e x   =   0 ;  
 	 	 }  
 	 	 i f ( i n d e x   <   0 ) {  
 	 	 	 i n d e x   =   n u m b e r O f T r a c k s   - 1 ;  
 	 	 }  
 	 }  
 	 v a r   t h i s T r a k M c : M o v i e C l i p   =   M o v i e C l i p ( p l a y l i s t . g e t C h i l d B y N a m e ( " p l a y l i s t "   +   i n d e x . t o S t r i n g ( ) ) ) ;  
 	 t h i s T r a k M c . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O V E R ,   t r a c k O v e r ) ;  
 	 t h i s T r a k M c . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . R O L L _ O U T ,   t r a c k O u t ) ;  
 	 T w e e n L i t e . t o ( t h i s T r a k M c . b g , 1 , { t i n t : t r a c k O v e r B g C o l o r } ) ;  
 	 T w e e n L i t e . t o ( t h i s T r a k M c . t r a c k A r t i s t , 0 , { t i n t : a r t i s t O v e r T e x t C l r } ) ;  
 	 T w e e n L i t e . t o ( t h i s T r a k M c . t r a c k T i t l e , 0 , { t i n t : t i t l e O v e r T e x t C l r } ) ;  
 	  
 	 l o a d T r a c k ( ) ;  
 	 / / p o p u l a t e   n o w   p l a y i n g   i n f o   w i t h   t r a c k   i n f o   f o r   t h i s   i n d e x  
 	 p o p u l a t e N o w P l a y i n g ( ) ;  
 }  
  
  
  
 / / E n d   o f   S o u n d   F u n c t i o n s  
  
  
  
 / / E V E N T   H A N D L E R S  
  
 / / P l a y l i s t   T r a c k   B u t t o n   H a n d l e r s  
 f u n c t i o n   t r a c k O v e r ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t . b g , 1 . 5 , { t i n t : t r a c k O v e r B g C o l o r } ) ;  
 	 T w e e n L i t e . t o ( e . t a r g e t . t r a c k A r t i s t , 0 , { t i n t : a r t i s t O v e r T e x t C l r } ) ;  
 	 T w e e n L i t e . t o ( e . t a r g e t . t r a c k T i t l e , 0 , { t i n t : t i t l e O v e r T e x t C l r } ) ;  
 }  
 f u n c t i o n   t r a c k O u t ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t . b g , 1 . 5 , { t i n t : t r a c k B g C o l o r } ) ;  
 	 T w e e n L i t e . t o ( e . t a r g e t . t r a c k A r t i s t , 0 , { t i n t : a r t i s t T e x t C l r } ) ;  
 	 T w e e n L i t e . t o ( e . t a r g e t . t r a c k T i t l e , 0 , { t i n t : t i t l e T e x t C l r } ) ;  
 }  
 	  
 / / P l a y   B u t t o n   H a n d l e r s  
 f u n c t i o n   p l a y O v e r ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : p l a y P a u s e O v e r C l r } ) ;  
 }  
 f u n c t i o n   p l a y O u t ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : p l a y P a u s e C l r } ) ;  
 }  
  
 / / S t o p   B u t t o n   H a n d l e r s  
 f u n c t i o n   s t o p O v e r ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : s t o p O v e r C l r } ) ;  
 }  
 f u n c t i o n   s t o p O u t ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : s t o p C l r } ) ;  
 }  
  
 / / P r e v i o u s   &   F o r w a r d   B u t t o n   H a n d l e r s  
 f u n c t i o n   n e x t O v e r ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : f o r w a r d O v e r C l r } ) ;  
 }  
 f u n c t i o n   n e x t O u t ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : f o r w a r d C l r } ) ;  
 }  
 f u n c t i o n   p r e v O v e r ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : r e v e r s e O v e r C l r } ) ;  
 }  
 f u n c t i o n   p r e v O u t ( e : E v e n t ) : v o i d {  
 	 T w e e n L i t e . t o ( e . t a r g e t , . 2 5 , { t i n t : r e v e r s e C l r } ) ;  
 }  
  
 / / V o l u m e   h a n d l e r s  
  
 f u n c t i o n   b e g i n D r a g ( e : E v e n t ) : v o i d {  
 	 r e c t   =   n e w   R e c t a n g l e ( v o l u m e B u t t o n . v o l B a s e . x , v o l u m e B u t t o n . v o l S c r u b . y , v o l u m e B u t t o n . v o l B a s e . w i d t h , 0 ) ;  
 	 v o l u m e B u t t o n . v o l S c r u b . s t a r t D r a g ( f a l s e , r e c t ) ;  
 	 s t a g e . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . M O U S E _ U P , e n d D r a g , f a l s e , 0 , t r u e ) ;  
 }  
 f u n c t i o n   e n d D r a g ( e : E v e n t ) : v o i d {  
 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . M O U S E _ U P , e n d D r a g ) ;  
 	 v o l u m e B u t t o n . v o l S c r u b . s t o p D r a g ( ) ;  
 	 a d j u s t V o l u m e ( ) ;  
 }  
  
 f u n c t i o n   a d j u s t V o l u m e ( ) : v o i d {  
 	 / / s t a r t   z e r o   a t   t h e   x   c o r d i n a t e   o f   t h e   v o l B a s e    
 	 v a r   z e r o : N u m b e r   =   M a t h . f l o o r ( v o l u m e B u t t o n . v o l B a s e . x ) ;  
 	 / / m e a s u r e   d i s t a n c e   f r o m   z e r o   a s   v o l S c r u b   x   c h a n g e s  
 	 v a r   d i s t : N u m b e r   =   v o l u m e B u t t o n . v o l S c r u b . x   -   z e r o ;  
 	 / / j u s t   a   l i t t l e   m a t h   h e r e  
 	 v a r   p e r c e n t : N u m b e r   =   d i s t / v o l u m e B u t t o n . v o l B a s e . w i d t h ;  
 	 / / s e t   t h e   v o l u m e   l e v e l   b a s e d   o n   t h e   d i s t a n c e   f r o m   z e r o  
 	 v o l u m e L e v e l   =   p e r c e n t ;  
 	 / / p a s s   v o l u m e L e v e l   t o   t h e   s o u n d T r a n s f o r m   M e t h o d  
 	 i f ( t w e e n V o l ) {  
 	 	 T w e e n L i t e . t o ( C H N L ,   2 ,   { v o l u m e : v o l u m e L e v e l } ) ;  
 	 	 t w e e n V o l   =   f a l s e ;  
 	 }  
 	 e l s e {  
 	 	 s N d T r a n s f o r m . v o l u m e   =   v o l u m e L e v e l ;  
 	 	 C H N L . s o u n d T r a n s f o r m   =     s N d T r a n s f o r m ;  
 	 }  
 	 i f ( p a r e n t . p a r e n t   ! =   s t a g e ) {  
 	 	 M o v i e C l i p ( p a r e n t . p a r e n t ) . u p d a t e V o l u m e L e v e l ( v o l u m e L e v e l ) ;  
 	 }  
 }  
  
 f u n c t i o n   u p d a t e V o l u m e ( v o l ) : v o i d {  
 	 v o l u m e L e v e l   =   v o l ;  
 	 T w e e n L i t e . t o ( C H N L ,   2 ,   { v o l u m e : v o l u m e L e v e l } ) ;  
 	 t w e e n V o l   =   f a l s e ;  
 	 v a r   z e r o : N u m b e r   =   M a t h . f l o o r ( v o l u m e B u t t o n . v o l B a s e . x ) ;  
 	 v a r   n u X : i n t   =   M a t h . f l o o r ( v o l u m e B u t t o n . v o l B a s e . w i d t h   *   v o l u m e L e v e l )  
 	 v o l u m e B u t t o n . v o l S c r u b . x   =   z e r o   +   n u X ;  
 }  
  
 f u n c t i o n   u p d a t e S l i d e r ( v o l ) : v o i d {  
 	 v a r   z e r o : N u m b e r   =   M a t h . f l o o r ( v o l u m e B u t t o n . v o l B a s e . x ) ;  
 	 v a r   n u X : i n t   =   M a t h . f l o o r ( v o l u m e B u t t o n . v o l B a s e . w i d t h   *   v o l u m e L e v e l )  
 	 v o l u m e B u t t o n . v o l S c r u b . x   =   z e r o   +   n u X ;  
 }  
  
 f u n c t i o n   v o l B t n C l i c k ( e : E v e n t ) : v o i d {  
 	 i f ( v o l u m e L e v e l   >   0 ) {  
 	 	 / / m u t e   a u d i o  
 	 	 v o l u m e L e v e l   =   0 ;  
 	 	 T w e e n L i t e . t o ( C H N L ,   2 ,   { v o l u m e : 0 } ) ;  
 	 	 T w e e n L i t e . t o ( v o l u m e B u t t o n . v o l S c r u b , . 5 , { x : v o l u m e B u t t o n . v o l B a s e . x } ) ;  
 	 }  
 	 e l s e {  
 	 	 / / t a k e   t o   1 0 0 %  
 	 	 v o l u m e L e v e l   =   1 ;  
 	 	 T w e e n L i t e . t o ( C H N L ,   2 ,   { v o l u m e : 1 } ) ;  
 	 	 T w e e n L i t e . t o ( v o l u m e B u t t o n . v o l S c r u b , . 5 , { x : v o l u m e B u t t o n . v o l B a s e . x   +   v o l u m e B u t t o n . v o l B a s e . w i d t h } ) ;  
 	 }  
 	 i f ( p a r e n t . p a r e n t   ! =   s t a g e ) {  
 	 	 M o v i e C l i p ( p a r e n t . p a r e n t ) . u p d a t e V o l u m e L e v e l ( v o l u m e L e v e l ) ;  
 	 }  
 }  
  
 f u n c t i o n   s e t I n i t i a l V o l u m e S c r u b X ( ) : v o i d {  
 	 / / t w e e n   v o l S c r u b  
 	 v a r   d i s t a n c e F r o m Z e r o : N u m b e r   =   v o l u m e L e v e l   *   v o l u m e B u t t o n . v o l B a s e . w i d t h ;  
 	 v a r   n u X : i n t   =   M a t h . c e i l ( v o l u m e B u t t o n . v o l B a s e . x   +   d i s t a n c e F r o m Z e r o ) ;  
 	 T w e e n L i t e . t o ( v o l u m e B u t t o n . v o l S c r u b , 0 , { x : n u X } ) ;  
 }  
  
 f u n c t i o n   t w e e n V o l u m e ( e : E v e n t ) : v o i d {  
 	 / / t w e e n   v o l S c r u b  
 	 v a r   n u X : i n t   =   M a t h . c e i l ( m o u s e X   -   v o l u m e B u t t o n . x ) ;  
 	 t w e e n V o l   =   t r u e ;  
 	 T w e e n L i t e . t o ( v o l u m e B u t t o n . v o l S c r u b , . 2 5 , { x : n u X , o n C o m p l e t e : a d j u s t V o l u m e } ) ;  
 }  
  
 / / P l a y l i s t   H a n d l e r s  
 f u n c t i o n   a d d E n t e r F r a m e ( e v e n t : M o u s e E v e n t ) : v o i d   {  
 	 p l a y l i s t . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . M O U S E _ O V E R ,   a d d E n t e r F r a m e ) ;  
 	 p l a y l i s t . a d d E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   l e t s S t a r t S c r o l l i n g ) ;  
 }  
  
 f u n c t i o n   l e t s S t a r t S c r o l l i n g ( e v e n t : E v e n t ) : v o i d   {  
 	 / / i f   w e   a r e   o u t s i d e   o f   t h e   p l a y l i s t   r e m o v e   e n t e r f r a m e   a n d   r e s e t   m o u s e O v e r   l i s t e n e r  
 	 i f   ( m o u s e X   <   b . l e f t   | |   m o u s e X   >   b . r i g h t   | |   m o u s e Y   <   b . t o p   | |   m o u s e Y   >   b . b o t t o m )   {  
 	 	 p l a y l i s t . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   l e t s S t a r t S c r o l l i n g ) ;  
 	 	 p l a y l i s t . a d d E v e n t L i s t e n e r ( M o u s e E v e n t . M O U S E _ O V E R ,   a d d E n t e r F r a m e ) ;  
 	 }  
 	 i f ( ( p l a y l i s t M a s k . h e i g h t   -   p l a y l i s t . h e i g h t )   > =   0 ) {  
 	 	 p l a y l i s t . r e m o v e E v e n t L i s t e n e r ( E v e n t . E N T E R _ F R A M E ,   l e t s S t a r t S c r o l l i n g ) ;  
 	 	 r e t u r n ;  
 	 }  
 	 v a r   c e n t e r O c l i p : N u m b e r   =   ( s t r o k . y ) + ( s t r o k . h e i g h t / 2 ) ;  
 	 v a r   y d i s t   =   m o u s e Y   -   c e n t e r O c l i p ;  
 	 p l a y l i s t . y   + =   - ( y d i s t   /   8 ) ;  
 	 / / t o p   c o n t s t r a i n t  
 	 i f   ( p l a y l i s t . y   >   s t r o k . y )   {  
 	 	 p l a y l i s t . y   =   s t r o k . y ;  
 	 }  
 	 / / b o t t o m   c o n s t r i a n t  
 	 v a r   a m o u n t T o S c r o l l : N u m b e r   =   s t r o k . y   -   ( p l a y l i s t . h e i g h t )   +   p l a y l i s t M a s k . h e i g h t ;  
 	 i f ( p l a y l i s t . y   <   a m o u n t T o S c r o l l ) {  
 	 	 p l a y l i s t . y   =   a m o u n t T o S c r o l l ;  
 	 }  
 }  
  
 / / M i s c   F u n c t i o n s  
 f u n c t i o n   s t r i n g T o B o o l e a n ( s t r i n g : S t r i n g ) : B o o l e a n {  
         r e t u r n   ( s t r i n g . t o L o w e r C a s e ( )   = =   ' t r u e ' ) ;  
 }                     ���                        �   �  ���A c t i o n s   ����O�O�                �   �               {	  0 , t r u e ) ;  
 }  
 f u n c t i o n   e n d D r a g ( e : E v e n t ) : v o i d {  
 	 s t a g e . r e m o v e E v e n t L i s t e n e r ( M o u s e E v e n t . M O U S E _ U P , e n d D r a g ) ;  
 	 v o l u m e B u t t o n . v o l S c r u b . s t o p D r a g ( ) ;  
 	 a d j u s t V o l u m e ( ) ;  
 }  
  
 f u n c t i o n   a d j u s t V o l u m e ( ) : v o i d {  
 	 / / s t a r t   z e r o   a t   t '   s c h e m a O p e r a t i o n = ' '   s c e n e R o o t L a b e l = ' S c e n e   1 '   o l d C o p i e d C o m p o n e n t P a t h = ' ' > 
 < / c o m p o n e n t > 
      �   �                                                   ���?�����       H          ���                     ���                        �   �  ���v o l u m e   s c r u b b e r   �����3��                �   �                    ���?�����       z    ��  CPicPage �� 	 CPicLayer �� 	 CPicFrame �� 	 CPicShape     �   �  (�                         ��̳    s    ��:0�   0  �� 0�:   0  0           �   �                                                   ���?�����       \          ���                     ���                        �   �  ���L a y e r   1   ����O�O�               �   �            0          ���                     ���                      ��  CPicPage �� 	 CPicLayer �� 	 CPicFrame �� 	 CPicShape     �   �                            ����    �  �>�.
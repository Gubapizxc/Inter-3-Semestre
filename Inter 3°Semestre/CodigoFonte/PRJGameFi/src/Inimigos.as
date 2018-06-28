
package 
{
	//import flash.display
	import starling.display.Image;
   	import starling.display.Quad;
    import starling.display.Sprite;
    import starling.text.TextField;
	import starling.events.KeyboardEvent;
	import starling.filters.ColorMatrixFilter;

	/**
	 * ...
	 * @author 
	 */
	public class Inimigos extends Sprite
	{
		public var tipo:String = "";
		public var gravi:int = 0;
		public var velo:int = 0;
		public var pode:Boolean = true;
		public var timer:int = 60;
		public var vida:int = 1;
		public var corpo:Quad;
		
		public var e1:Image;
		public var e2:Image;
		public var ent:Image;
		
		public var anim:int = 0;
		
		public var verm:Number = 0;
		public var filterRed:ColorMatrixFilter = new ColorMatrixFilter();
		public var filterNada:ColorMatrixFilter = new ColorMatrixFilter();
		
		
		public function Inimigos(lar:int,alt:int,cor:int) 
		{
			filterRed.tint(0xFF0000, verm);
			filterNada.tint(0xFFFFFF, 0);
			
			corpo = new Quad(lar, alt, cor);
			corpo.pivotX = corpo.width  / 2;
			corpo.alpha = 0;
			addChild(corpo);
			
			e1  = Assets.imagem(Assets.e1);
			e1.width = 60;
			e1.height = 70;
			e1.pivotX = corpo.width  / 2;
			e1.x = 0;
			e1.alpha = 1;
			e1.y = -6;
			addChild(e1);
		
			
			
		}
		public function hitbox():Quad {
			return corpo;
		}
		
		public function gou():void {
		if (anim <= 4) {
		e1.texture  = Assets.textu(Assets.e1);
		anim++;
		}	
		if (anim > 4 && anim <= 8) {
		e1.texture  = Assets.textu(Assets.e2);
		anim++;
		}	
	
		if (anim > 8 && anim <= 3000) {
		anim = 0;

		}
		}
		
		public function torand():void {
		if (anim <= 6) {
		e1.texture  = Assets.textu(Assets.tor1);
		e1.y = -2;
		e1.width = 130;
		e1.height = 130;
		e1.x = -16;
		anim++;
		}	
		if (anim > 6 && anim <= 12) {
		e1.texture  = Assets.textu(Assets.tor2);
		e1.y = -2;
		e1.width = 130;
		e1.height = 130;
		e1.x = -16;
		anim++;
		}	
		if (anim > 12 && anim <= 18) {
		e1.texture  = Assets.textu(Assets.tor3);
		e1.y = -2;
		e1.width = 130;
		e1.height = 130;
		e1.x = -16;
		anim++;
		}
		if (anim > 18 && anim <= 24) {
		e1.texture  = Assets.textu(Assets.tor4);
		e1.y = -2;
		e1.width = 130;
		e1.height = 130;
		e1.x = -16;
		anim++;
		}
		if (anim > 24 && anim <= 3000) {
		anim = 0;

		}
		}
		
		public function pasand():void {
		if (anim <= 6) {
		e1.texture  = Assets.textu(Assets.pas1);
		e1.width = 70;
		e1.height = 95;
		anim++;
		}	
		if (anim > 6 && anim <= 12) {
		e1.texture  = Assets.textu(Assets.pas2);
		e1.y = 2;
		e1.width = 70;
		e1.height = 95;
		anim++;
		}	
		if (anim > 12 && anim <= 18) {
		e1.texture  = Assets.textu(Assets.pas3);
		e1.y = 4;
		e1.width = 70;
		e1.height = 95;
		anim++;
		}
		if (anim > 18 && anim <= 3000) {
		anim = 0;
		}
		}
		
		public function xama():void {
		if (anim <= 6) {
		e1.texture  = Assets.textu(Assets.x1);
		e1.x = 5
		e1.width = 70;
		e1.height = 95;
		anim++;
		}	
		if (anim > 6 && anim <= 12) {
		e1.texture  = Assets.textu(Assets.x2);
		e1.x = 5
		e1.width = 70;
		e1.height = 95;
		anim++;
		}	
		if (anim > 12 && anim <= 3000) {
		anim = 0;

		}
		}
		
		public function berand():void {
		if (anim <= 6) {
		e1.texture  = Assets.textu(Assets.ber1);
		e1.x = 5;
		e1.y = -15;
		e1.width = 190;
		e1.height = 100;
		anim++;
		}	
		if (anim > 6 && anim <= 12) {
		e1.texture  = Assets.textu(Assets.ber2);
		e1.x = 5;
		e1.y = -15;
		e1.width = 190;
		e1.height = 100;
		anim++;
		}	
		if (anim > 12 && anim <= 18) {
		e1.texture  = Assets.textu(Assets.ber3);
		e1.x = 5;
		e1.y = -15;
		e1.width = 190;
		e1.height = 100;
		anim++;
		}
		if (anim > 18 && anim <= 24) {
		e1.texture  = Assets.textu(Assets.ber4);
		e1.x = 5;
		e1.y = -15;
		e1.width = 190;
		e1.height = 100;
		anim++;
		}
		if (anim > 24 && anim <= 3000) {
		anim = 0;

		}
		}
		
		public function torpar():void {	
		e1.texture  = Assets.textu(Assets.tor3);
		e1.y = -2;
		e1.x = -16;
		e1.width = 130;
		e1.height = 130;
		}
		
		public function berpara():void {	
		e1.texture  = Assets.textu(Assets.berpar);
	
		e1.width = 190;
		e1.height = 100;
		}
		
		public function paspar():void {	
		e1.texture  = Assets.textu(Assets.pas2);
		e1.y = 2;
		e1.width = 70;
		e1.height = 95;
		}
		
		public function tigpar():void {	
		e1.texture  = Assets.textu(Assets.tig2);
		e1.y = 4;
		e1.width = 70;
		e1.height = 95;
		}
		public function tigpul():void {	
		e1.texture  = Assets.textu(Assets.tig1);
		//e1.y = 18;
		e1.width = 70;
		e1.height = 95;
		}
		
		public function sto():void {	
		e1.texture  = Assets.textu(Assets.e1);
		}
		
		public function tir():void {	
		e1.texture  = Assets.textu(Assets.ent);
		}
	}

}

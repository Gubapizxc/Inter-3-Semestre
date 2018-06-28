
package 
{
	import starling.display.Image;
   	import starling.display.Quad;
    import starling.display.Sprite;
    import starling.text.TextField;
	import starling.events.KeyboardEvent;


	/**
	 * ...
	 * @author 
	 */
	public class Char extends Sprite
	{
		
		public var velocidadeX: int = 0;
		public var velocidadeY: int = 0;
		public var estado: String = "";
		public var cor:uint = 0xFFFFFF;
		private var corpo:Quad;
		public var end:Boolean = true;
		
		public var parado:Image;
		public var p1:Image;
		public var p2:Image;
		public var pis1:Image;
		public var pis2:Image;
		
		public var w1:Image;
		public var w2r:Image;
		public var w3:Image;
		public var w4:Image;
		public var w5:Image;
		public var w6:Image;
		
		public var h1:Image;
		public var h2:Image;
		public var h3:Image;
		
		public var s1:Image;
		public var s2:Image;
		public var s3:Image;
		public var s4:Image;
	
		public var atu:Image;
		public var atu1:Image;
		public var atu2:Image;
		public var atu3:Image;
		
		public var at1:Image;
		public var at2:Image;
		public var at3:Image;
		public var at4:Image;
		
		public var atd3:Image;
		public var atd2:Image;
		public var atd1:Image;
		public var atd:Image;
		
		public var jump:Image;
		
		public var tiro:Image;
		
		public var def:Image;
		
			
		public var anim:int = 0;
		public var psn:int = 0;
	
		public function Char() 
		{
			
		
			corpo = new Quad(40, 80, cor);
			corpo.pivotX = corpo.width  / 2;
			corpo.alpha = 0;
			addChild(corpo);
			
			parado  = Assets.imagem(Assets.parado);
			parado.width = 160;
			parado.height = 100;
			parado.pivotX = corpo.width  / 2;
			parado.x = 0;
			parado.y = -20;
			parado.alpha = 0;
			addChild(parado);
			
			p1  = Assets.imagem(Assets.p1);
			p1.width = 160;
			p1.height = 100;
			p1.pivotX = corpo.width  / 2;
			p1.x = 0;
			p1.y = -20;
			p1.alpha = 0;
			addChild(p1);
			
			p2  = Assets.imagem(Assets.p2);
			p2.width = 160;
			p2.height = 100;
			p2.pivotX = corpo.width  / 2;
			p2.x = 0;
			p2.y = -20;
			p2.alpha = 0;
			addChild(p2);
			
			pis1  = Assets.imagem(Assets.pis1);
			pis1.width = 160;
			pis1.height = 100;
			pis1.pivotX = corpo.width  / 2;
			pis1.x = 0;
			pis1.y = -20;
			pis1.alpha = 0;
			addChild(pis1);
			
			pis2  = Assets.imagem(Assets.pis2);
			pis2.width = 160;
			pis2.height = 100;
			pis2.pivotX = corpo.width  / 2;
			pis2.x = 0;
			pis2.y = -20;
			pis2.alpha = 0;
			addChild(pis2);
			
			w1  = Assets.imagem(Assets.w1);
			w1.width = 160;
			w1.height = 100;
			w1.pivotX = corpo.width  / 2;
			w1.x = 0;
			w1.y = -20;
			w1.alpha = 0;
			addChild(w1);
			
			w2r  = Assets.imagem(Assets.w2r);
			w2r.width = 160;
			w2r.height = 100;
			w2r.pivotX = corpo.width  / 2;
			w2r.x = 0;
			w2r.y = -20;
			w2r.alpha = 0;
			addChild(w2r);
			
			w3  = Assets.imagem(Assets.w3);
			w3.width = 160;
			w3.height = 100;
			w3.pivotX = corpo.width  / 2;
			w3.x = 0;
			w3.y = -20;
			w3.alpha = 0;
			addChild(w3);
			
			w4  = Assets.imagem(Assets.w4);
			w4.width = 160;
			w4.height = 100;
			w4.pivotX = corpo.width  / 2;
			w4.x = 0;
			w4.y = -20;
			w4.alpha = 0;
			addChild(w4);
			
			w5  = Assets.imagem(Assets.w5);
			w5.width = 160;
			w5.height = 100;
			w5.pivotX = corpo.width  / 2;
			w5.x = 0;
			w5.y = -20;
			w5.alpha = 0;
			addChild(w5);
			
			w6  = Assets.imagem(Assets.w6);
			w6.width = 160;
			w6.height = 100;
			w6.pivotX = corpo.width  / 2;
			w6.x = 0;
			w6.y = -20;
			w6.alpha = 0;
			addChild(w6);
			
			h1  = Assets.imagem(Assets.h1);
			h1.width = 160;
			h1.height = 100;
			h1.pivotX = corpo.width  / 2;
			h1.x = -10;
			h1.y = -20;
			h1.alpha = 0;
			addChild(h1);
			
			h2  = Assets.imagem(Assets.h2);
			h2.width = 160;
			h2.height = 100;
			h2.pivotX = corpo.width  / 2;
			h2.x = -10;
			h2.y = -20;
			h2.alpha = 0;
			addChild(h2);
			
			h3  = Assets.imagem(Assets.h3);
			h3.width = 160;
			h3.height = 100;
			h3.pivotX = corpo.width  / 2;
			h3.x = -10;
			h3.y = -20;
			h3.alpha = 0;
			addChild(h3);
			
			s1  = Assets.imagem(Assets.s1);
			s1.width = 160;
			s1.height = 100;
			s1.pivotX = corpo.width  / 2;
			s1.x = -10;
			s1.y = -20;
			s1.alpha = 0;
			addChild(s1);
			
			s2  = Assets.imagem(Assets.s2);
			s2.width = 160;
			s2.height = 100;
			s2.pivotX = corpo.width  / 2;
			s2.x = -10;
			s2.y = -20;
			s2.alpha = 0;
			addChild(s2);
			
			s3  = Assets.imagem(Assets.s3);
			s3.width = 160;
			s3.height = 100;
			s3.pivotX = corpo.width  / 2;
			s3.x = -10;
			s3.y = -20;
			s3.alpha = 0;
			addChild(s3);
			
			s4  = Assets.imagem(Assets.s4);
			s4.width = 160;
			s4.height = 100;
			s4.pivotX = corpo.width  / 2;
			s4.x = -10;
			s4.y = -20;
			s4.alpha = 0;
			addChild(s4);
			
			atu = Assets.imagem(Assets.atu);
			atu.width = 160;
			atu.height = 100;
			atu.pivotX = corpo.width  / 2;
			atu.x = -12;
			atu.y = -5;
			atu.alpha = 0;
			addChild(atu);
			
			atu1 = Assets.imagem(Assets.atu1);
			atu1.width = 160;
			atu1.height = 100;
			atu1.pivotX = corpo.width  / 2;
			atu1.x = -12;
			atu1.y = -5;
			atu1.alpha = 0;
			addChild(atu1);
			
			atu2 = Assets.imagem(Assets.atu2);
			atu2.width = 160;
			atu2.height = 100;
			atu2.pivotX = corpo.width  / 2;
			atu2.x = -12;
			atu2.y = -5;
			atu2.alpha = 0;
			addChild(atu2);
			
			atu3 = Assets.imagem(Assets.atu3);
			atu3.width = 160;
			atu3.height = 100;
			atu3.pivotX = corpo.width  / 2;
			atu3.x = -12;
			atu3.y = -5;
			atu3.alpha = 0;
			addChild(atu3);
			
			at1 = Assets.imagem(Assets.at1);
			at1.width = 160;
			at1.height = 100;
			at1.pivotX = corpo.width  / 2;
			at1.x = 0;
			at1.y = -20;
			at1.alpha = 0;
			addChild(at1);
			
			at2 = Assets.imagem(Assets.at2);
			at2.width = 160;
			at2.height = 100;
			at2.pivotX = corpo.width  / 2;
			at2.x = 0;
			at2.y = -20;
			at2.alpha = 0;
			addChild(at2);
			
			at3 = Assets.imagem(Assets.at3);
			at3.width = 160;
			at3.height = 100;
			at3.pivotX = corpo.width  / 2;
			at3.x = 0;
			at3.y = -20;
			at3.alpha = 0;
			addChild(at3);
			
			at4 = Assets.imagem(Assets.at4);
			at4.width = 160;
			at4.height = 100;
			at4.pivotX = corpo.width  / 2;
			at4.x = 0;
			at4.y = -20;
			at4.alpha = 0;
			addChild(at4);
			
			atd3 = Assets.imagem(Assets.atd3);
			atd3.width = 160;
			atd3.height = 100;
			atd3.pivotX = corpo.width  / 2;
			atd3.x = -20;
			atd3.y = -5;
			atd3.alpha = 0;
			addChild(atd3);
			
			atd2 = Assets.imagem(Assets.atd2);
			atd2.width = 160;
			atd2.height = 100;
			atd2.pivotX = corpo.width  / 2;
			atd2.x = -20;
			atd2.y = -5;
			atd2.alpha = 0;
			addChild(atd2);
			
			atd1 = Assets.imagem(Assets.atd1);
			atd1.width = 160;
			atd1.height = 100;
			atd1.pivotX = corpo.width  / 2;
			atd1.x = -20;
			atd1.y = -5;
			atd1.alpha = 0;
			addChild(atd1);
			
			atd = Assets.imagem(Assets.atd);
			atd.width = 160;
			atd.height = 100;
			atd.pivotX = corpo.width  / 2;
			atd.x = -20;
			atd.y = -5;
			atd.alpha = 0;
			addChild(atd);
			
			jump = Assets.imagem(Assets.jump);
			jump.width = 160;
			jump.height = 100;
			jump.pivotX = corpo.width  / 2;
			jump.x = -30;
			jump.y = -18;
			jump.alpha = 0;
			addChild(jump);
			
			tiro = Assets.imagem(Assets.tiro);
			tiro.width = 160;
			tiro.height = 100;
			tiro.pivotX = corpo.width  / 2;
			tiro.x = 0;
			tiro.y = -20;
			tiro.alpha = 0;
			addChild(tiro);
			
			def = Assets.imagem(Assets.def);
			def.width = 160;
			def.height = 100;
			def.pivotX = corpo.width  / 2;
			def.x = 0;
			def.y = -20;
			def.alpha = 0;
			addChild(def);
			
	
			
		}
		public function hitbox():Quad {
			return corpo;
		}
		
		public function pisc():void {
		if (psn <= 7) {
		end = false;
		if (parado.alpha == 1 || p1.alpha == 1 || p2.alpha == 1) {
		pis1.alpha = 1;
		pis2.alpha = 0;
		}else {
		pis1.alpha = 0;
		pis2.alpha = 0;
		}
		psn++
		}
		if (psn > 7 && psn <= 14) {
		if (parado.alpha == 1 || p1.alpha == 1 || p2.alpha == 1) {
		pis1.alpha = 0;
		pis2.alpha = 1;
		}else {
		pis1.alpha = 0;
		pis2.alpha = 0;
		}
		psn++
		}
		if (psn > 14 && psn <= 21) {
		if (parado.alpha == 1 || p1.alpha == 1 || p2.alpha == 1) {
		pis1.alpha = 1;
		pis2.alpha = 0;
		}else {
		pis1.alpha = 0;
		pis2.alpha = 0;
		}
		psn++
		}
		if (psn > 21 && psn <= 90) {
		if (parado.alpha == 1 || p1.alpha == 1 || p2.alpha == 1) {
		pis1.alpha = 0;
		pis2.alpha = 0;
		}else {
		pis1.alpha = 0;
		pis2.alpha = 0;
		}
		psn++
		}
		if (psn > 90 && psn <= 3000) {
		psn = 0;
		end = true;
		pis1.alpha = 0;
		pis2.alpha = 0;
		}
	
		}
		public function para():void {
		if (anim <= 6) {
		end = false;
		parado.alpha = 1;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}
		if (anim > 6 && anim <= 12) {
		parado.alpha = 0;
		p1.alpha = 1; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;	
		anim++;
		}
		if (anim > 12 && anim <= 18) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 1;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;	
		anim++;
		}
		if (anim > 18 && anim <= 24) {
		parado.alpha = 0;
		p1.alpha = 1; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;	
		anim++;
		}
		if (anim > 24 && anim <= 3000) {
		anim = 0;
		end = true;
		}
	
		}
		
		public function pulo():void {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 1;
		def.alpha = 0;
		end = true;
		//anim = 0;
		}
		public function atirando():void {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 1;
		jump.alpha = 0;
		def.alpha = 0;
		end = true;
		//anim = 0;
		}
		public function defende():void {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 1;
		end = true;
		//anim = 0;
		}
		
		public function anda():void {
		if (anim <= 4) {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 1;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 4 && anim <= 8) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 1;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 8 && anim <= 12) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 1;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 12 && anim <= 16) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 1;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 16 && anim <= 20) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 1;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 20 && anim <= 24) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 1;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 24 && anim <= 28) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 1;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 28 && anim <= 3000) {
		anim = 0;
		end = true;
		}
		}
		
		public function stun():void {
		if (anim <= 8) {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 1;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 8 && anim <= 16) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 1;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 16 && anim <= 24) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 1;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 24 && anim <= 32) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 1;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		
		if (anim > 32 && anim <= 3000) {
		anim = 0;
		end = true;
		}
		}
		
		public function hurt():void {
		if (anim <= 4) {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 1; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 4 && anim <= 8) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 8 && anim <= 12) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 1; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 12 && anim <= 16) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 16 && anim <= 20) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 1;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 20 && anim <= 24) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 24 && anim <= 28) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 1; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 28 && anim <= 32) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	

		if (anim > 32 && anim <= 3000) {
		anim = 0;
		end = true;
		}
		}
		
		public function ataca():void {
		if (anim <= 3) {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 1;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 3 && anim <= 6) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 1;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 6 && anim <= 9) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 1;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 9 && anim <= 12) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 1;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 12 && anim <= 3000) {
		anim = 0;
		end = true;
		}
		}
		
		public function atacaup():void {
		if (anim <= 1) {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 1;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 1 && anim <= 4) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 1; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 4 && anim <= 7) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 2; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 7 && anim <= 10) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 1;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 10 && anim <= 3000) {
		anim = 0;
		end = true;
		}
		}
		
		public function atacadown():void {
		if (anim <= 3) {
		end = false;
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 1;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 3 && anim <= 6) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 1;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 6 && anim <= 9) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 1;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 0;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 9 && anim <= 12) {
		parado.alpha = 0;
		p1.alpha = 0; p2.alpha = 0;
		w1.alpha = 0;w2r.alpha = 0;w3.alpha = 0;w4.alpha = 0;w5.alpha = 0;w6.alpha = 0;
		h1.alpha = 0; h2.alpha = 0; h3.alpha = 0;
		atu1.alpha = 0; atu2.alpha = 0; atu3.alpha = 0;
		atd3.alpha = 0;atd2.alpha = 0;atd1.alpha = 0;
		s1.alpha = 0;s2.alpha = 0;s3.alpha = 0;s4.alpha = 0;
		atu.alpha = 0;at1.alpha = 0;at2.alpha = 0;at3.alpha = 0;at4.alpha = 0;atd.alpha = 1;
		tiro.alpha = 0;
		jump.alpha = 0;
		def.alpha = 0;
		anim++;
		}	
		if (anim > 12 && anim <= 3000) {
		anim = 0;
		end = true;
		}
		}
		
	}

}

package 
{
	import starling.display.Quad;
	import starling.display.Image;
    import starling.display.Sprite;
    import starling.text.TextField;
	import starling.events.KeyboardEvent;
	
	public class Barras extends Sprite
	{
		public var dano:int;
		public var veloci:int;
		public var fundo:Image;
		public var fundo2:Image;
		public var fundo3:Image;
		public var fundo4:Image;
		public var fundo5:Image;
		public var fundo6:Image;
		public var fundo7:Image;
		public var fundo8:Image;
		
		//private var blr:Quad;
		public function Barras()
		{
			
			fundo  = Assets.imagem(Assets.vidbar);
			fundo.width = 100;
			fundo.height = 30;
			fundo.alpha = 0;
			addChild(fundo);
			
			fundo2  = Assets.imagem(Assets.defbar);
			fundo2.width = 100;
			fundo2.height = 30;
			fundo2.alpha = 0;
			addChild(fundo2);
			
			fundo3  = Assets.imagem(Assets.canva);
			fundo3.width = 170;
			fundo3.height = 70;
			fundo3.alpha = 0;
			addChild(fundo3);
			
			fundo4  = Assets.imagem(Assets.canva2);
			fundo4.width = 170;
			fundo4.height = 70;
			fundo4.alpha = 0;
			addChild(fundo4);
			
			fundo5  = Assets.imagem(Assets.canva3);
			fundo5.width = 170;
			fundo5.height = 70;
			fundo5.alpha = 0;
			addChild(fundo5);
			
			fundo6  = Assets.imagem(Assets.canva4);
			fundo6.width = 170;
			fundo6.height = 70;
			fundo6.alpha = 0;
			addChild(fundo6);
			
			fundo7  = Assets.imagem(Assets.canva5);
			fundo7.width = 170;
			fundo7.height = 70;
			fundo7.alpha = 0;
			addChild(fundo7);
			
			fundo8  = Assets.imagem(Assets.canva6);
			fundo8.width = 170;
			fundo8.height = 70;
			fundo8.alpha = 0;
			addChild(fundo8);
		
			var blr:Quad;
			blr = new Quad(10, 10, 0x000000)
			blr.alpha = 0;
			addChild(blr);
		}
		
	}

}
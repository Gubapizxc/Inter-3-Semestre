package 
{
	import starling.display.Quad;
	import starling.display.Image;
    import starling.display.Sprite;
    import starling.text.TextField;
	import starling.events.KeyboardEvent;
	
	public class Balas extends Sprite
	{
		public var dano:int;
		public var veloci:int;
		
		//private var blr:Quad;
		public function Balas()
		{
			var fundo:Image;
			fundo  = Assets.imagem(Assets.bala);
			fundo.width = 10;
			fundo.height = 10;
			addChild(fundo);
		
			var blr:Quad;
			blr = new Quad(10, 10, 0x000000)
			blr.alpha = 0;
			addChild(blr);
		}
		
	}

}
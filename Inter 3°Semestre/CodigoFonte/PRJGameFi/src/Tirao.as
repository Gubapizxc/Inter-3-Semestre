package 
{
	import starling.display.Quad;
	import starling.display.Image;
    import starling.display.Sprite;
    import starling.text.TextField;
	import starling.events.KeyboardEvent;
	
	public class Tirao extends Sprite
	{
		public var dano:int;
		public var veloci:int;
		
		
		//private var blr:Quad;
		public function Tirao()
		{
			var fundo:Image;
			fundo  = Assets.imagem(Assets.tirao);
			fundo.width = 20;
			fundo.height = 20;
			addChild(fundo);
		
			var blr:Quad;
			blr = new Quad(20, 20, 0x9b14e7)
			blr.alpha = 0;
			addChild(blr);
		}
		
	}

}
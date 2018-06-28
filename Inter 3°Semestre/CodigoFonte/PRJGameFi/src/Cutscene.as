package 
{
	import flash.events.MouseEvent;
	import flash.media.SoundMixer; 
	import flash.media.Sound; 
	import flash.display.Bitmap;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	import starling.display.Button;
	import starling.textures.Texture;
	import starling.display.Image;
	import starling.display.Button;
	import starling.display.Sprite;
	import starling.events.KeyboardEvent;
	import starling.events.Event;
	import starling.events.TouchEvent;
	import starling.events.Touch;
	import starling.events.TouchPhase;
	import starling.text.TextField;
	import starling.events.EnterFrameEvent;
	import starling.display.Quad;
	
	public class Cutscene extends Sprite
	{
		private var hyr:int = 0;
		private var sim:int = 2;
		private var quadros:int = 1;
		public var fundo:Image;
		public var button1:Button = new Button(Assets.textu(Assets.butnext));
		public var button2:Button = new Button(Assets.textu(Assets.butskip));
		[Embed(source = "../assets/som/menu.mp3")] 
		private const MENU:Class;
		[Embed(source = "../assets/som/buto.mp3")] 
		public const BUTO:Class;
		public var menu:Sound = new MENU() as Sound;
		public var buto:Sound = new BUTO() as Sound;
		
		public function Cutscene() 
		{
			
			
			//SoundMixer.stopAll();
		   
		   
			
			
			fundo  = Assets.imagem(Assets.cut1);
			fundo.width = 720;
			fundo.height = 480;
			addChild(fundo);
			
			
			//button1.useHandCursor = true;
			//button1.touchable = true;
			//button1.enabled = true;
			
			addChild(button1);
			button1.x = 570;
			button1.y = 400;
			
			addChild(button2);
			button2.x = 450;
			button2.y = 400;
			
			
			//button2.addEventListener(Event.TRIGGERED, onButtonTriggered2);
			
		
			button1.addEventListener(Event.TRIGGERED, playbut2);
			button2.addEventListener(Event.TRIGGERED, playbut);
			addEventListener(EnterFrameEvent.ENTER_FRAME, frameupdate);
		}
		
		public function frameupdate(event:EnterFrameEvent):void {
		
		
	
		}
		
	private function playbut(evento:Event):void
    {
			buto.play();
			SoundMixer.stopAll();
			var tela:Lev1;
			tela = new Lev1();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
    }
	private function playbut2(evento:Event):void
    {
		buto.play();
		quadros++;
		if (quadros == 2) fundo.texture  = Assets.textu(Assets.cut2);
		if (quadros == 3) fundo.texture  = Assets.textu(Assets.cut3);
		if (quadros == 4) fundo.texture  = Assets.textu(Assets.cut4);
		if (quadros == 5) fundo.texture  = Assets.textu(Assets.cut5);
		if (quadros == 6) fundo.texture  = Assets.textu(Assets.cut6);
		fundo.readjustSize();
		if(quadros > 6){
			buto.play();
			SoundMixer.stopAll();
            var tela:Lev1;
			tela = new Lev1();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
		}
    }
	
	}

}
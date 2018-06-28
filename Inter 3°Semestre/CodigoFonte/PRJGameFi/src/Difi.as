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
	
	public class Difi extends Sprite
	{
		public var vidamaxima:int;
		public var hyr:int = 0;
		public var sim:int = 2;
		public var fundo:Image;
		public var button1:Button = new Button(Assets.textu(Assets.butnormal));
		public var button2:Button = new Button(Assets.textu(Assets.buthard));
		public var button3:Button = new Button(Assets.textu(Assets.butkamikaze));
		public var button4:Button = new Button(Assets.textu(Assets.butbackmin));
		[Embed(source = "../assets/som/menu.mp3")] 
		public const MENU:Class;
		[Embed(source = "../assets/som/buto.mp3")] 
		public const BUTO:Class;
		public var menu:Sound = new MENU() as Sound;
		public var buto:Sound = new BUTO() as Sound;
		
		public function Difi() 
		{
			
			
			//SoundMixer.stopAll();
		   // menu.play();
		   
		  
			
			var fundo:Image;
			fundo  = Assets.imagem(Assets.inicio);
			fundo.width = 720;
			fundo.height = 480;
			addChild(fundo);
			
			
			addChild(button1);
			button1.x = 30;
			button1.y = 220;
			button1.useHandCursor = true;
			button1.touchable = true;
			//button1.enabled = true;
			
			
			addChild(button2);
			button2.x = 30;
			button2.y = 300;
			
			addChild(button3);
			button3.x = 30;
			button3.y = 380;
			
			
			addChild(button4);
			button4.x = 30;
			button4.y = 120;
			//button4.height = 20;
			//button4.width = 100;
		
			button1.addEventListener(Event.TRIGGERED, normal);
			button2.addEventListener(Event.TRIGGERED, dificil);
			button3.addEventListener(Event.TRIGGERED, kamikaze);
			button4.addEventListener(Event.TRIGGERED, back);
			addEventListener(EnterFrameEvent.ENTER_FRAME, frameupdate);
		}
		
		public function frameupdate(event:EnterFrameEvent):void {
		
		
	
		}
		
	public function normal(evento:Event):void
    {
			Globais.vidaMAx = 100;
			buto.play();
			var tela:Cutscene;
			tela = new Cutscene();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
    }
	public function dificil(evento:Event):void
    {
			Globais.vidaMAx = 50;
			buto.play();
            var tela:Cutscene;
			tela = new Cutscene();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			
    }
	
	public function kamikaze(evento:Event):void
    {
			Globais.vidaMAx = 1000000;
			buto.play();
            var tela:Cutscene;
			tela = new Cutscene();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			
			
    }
	public function back(evento:Event):void
    {
			buto.play();
            var tela:Inicio;
			tela = new Inicio();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			
			
    }
	
	}

}
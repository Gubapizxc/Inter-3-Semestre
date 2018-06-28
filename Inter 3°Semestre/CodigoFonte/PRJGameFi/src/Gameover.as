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
	
	public class Gameover extends Sprite
	{
		private var hyr:int = 0;
		private var sim:int = 2;
		public var fundo:Image;
		public var button1:Button = new Button(Assets.textu(Assets.butretry));
		public var button2:Button = new Button(Assets.textu(Assets.butmenu));
		[Embed(source = "../assets/som/scream.mp3")] 
		private const MENU:Class;
		[Embed(source = "../assets/som/buto.mp3")] 
		public const BUTO:Class;
		public var menu:Sound = new MENU() as Sound;
		public var buto:Sound = new BUTO() as Sound;
		
		public function Gameover() 
		{
			
			
			//SoundMixer.stopAll();
				menu.play();
			
				
		   
		  
			
			var fundo:Image;
			fundo  = Assets.imagem(Assets.gameover);
			fundo.width = 720;
			fundo.height = 480;
			addChild(fundo);
			
			addChild(button1);
			button1.x = 50;
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
		
	private function playbut2(evento:Event):void
    {
			SoundMixer.stopAll();
			if(Globais.level == 1){
			var tela1:Lev1;
			tela1 = new Lev1();
			parent.addChild(tela1);
			}
			if(Globais.level == 2){
			var tela2:Lev2;
			tela2 = new Lev2();
			parent.addChild(tela2);
			}
			if(Globais.level == 3){
			var tela3:Lev3;
			tela3 = new Lev3();
			parent.addChild(tela3);
			}
			if(Globais.level == 4){
			var tela4:Lev4;
			tela4 = new Lev4();
			parent.addChild(tela4);
			}
			if(Globais.level == 5){
			var tela5:Lev5;
			tela5 = new Lev5();
			parent.addChild(tela5);
			}
			
			
			
			removeEventListeners();
			removeFromParent(true);
    }
	private function playbut(evento:Event):void
    {
			SoundMixer.stopAll();
			buto.play();
            var tela:Inicio;
			tela = new Inicio();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			
    }
	
	}

}
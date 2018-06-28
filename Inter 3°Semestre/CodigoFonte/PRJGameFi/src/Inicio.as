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
	
	public class Inicio extends Sprite
	{
		private var hyr:int = 0;
		private var sim:int = 2;
		public var fundo:Image;
		public var button1:Button = new Button(Assets.textu(Assets.butplay));
		public var button2:Button = new Button(Assets.textu(Assets.butinst));
		[Embed(source = "../assets/som/menu.mp3")] 
		private const MENU:Class;
		[Embed(source = "../assets/som/buto.mp3")] 
		public const BUTO:Class;
		public var menu:Sound = new MENU() as Sound;
		public var buto:Sound = new BUTO() as Sound;
		
		public function Inicio() 
		{
			
			
			//SoundMixer.stopAll();
		    if (Globais.toca == true) {
				menu.play(0, int.MAX_VALUE);
				Globais.toca = false;
			}
		   
		   addChild(button1);
			button1.x = 360;
			button1.y = 240;
			
			var fundo:Image;
			fundo  = Assets.imagem(Assets.inicio);
			fundo.width = 720;
			fundo.height = 480;
			addChild(fundo);
			
			
			addChild(button1);
			button1.x = 30;
			button1.y = 240;
			button1.useHandCursor = true;
			button1.touchable = true;
			//button1.enabled = true;
			
			
			addChild(button2);
			button2.x = 30;
			button2.y = 340;
			
			
			//button2.addEventListener(Event.TRIGGERED, onButtonTriggered2);
			
		
			button1.addEventListener(Event.TRIGGERED, playbut2);
			button2.addEventListener(Event.TRIGGERED, playbut);
			addEventListener(EnterFrameEvent.ENTER_FRAME, frameupdate);
		}
		
		public function frameupdate(event:EnterFrameEvent):void {
		
		
	
		}
		
	private function playbut2(evento:Event):void
    {
			buto.play();
			var tela:Difi;
			tela = new Difi();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
    }
	private function playbut(evento:Event):void
    {
			buto.play();
            var tela:Tutorial;
			tela = new Tutorial();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			
    }
	
	}

}
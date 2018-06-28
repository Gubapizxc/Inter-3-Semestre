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
	
	public class Tutorial extends Sprite
	{
		private var hyr:int = 0;
		private var sim:int = 2;
		public var fundo:Image;
		public var button1:Button = new Button(Assets.textu(Assets.butback));
		[Embed(source = "../assets/som/menu.mp3")] 
		private const MENU:Class;
		public var menu:Sound = new MENU() as Sound;
		[Embed(source = "../assets/som/buto.mp3")] 
		public const BUTO:Class;
		public var buto:Sound = new BUTO() as Sound;
		
		public var tut1:Image;
		public var tut2:Image;
		public var tut3:Image;
		public var tut4:Image;
		
	
		public var anim:int = 0;
		
		public function Tutorial() 
		{
			
			//SoundMixer.stopAll();
		   // menu.play();
		   addChild(button1);
			button1.x = 360;
			button1.y = 240;
			
			var fundo:Image;
			fundo  = Assets.imagem(Assets.tutor);
			fundo.width = 720;
			fundo.height = 480;
			addChild(fundo);
			
			tut1  = Assets.imagem(Assets.tut1);
			tut1.x = 350;
			tut1.y = 20;
			tut1.alpha = 1;
			addChild(tut1);
			
			tut2  = Assets.imagem(Assets.tut2);
			tut2.x = 350;
			tut2.y = 20;
			tut2.alpha = 0;
			addChild(tut2);
			
			tut3  = Assets.imagem(Assets.tut3);
			tut3.x = 350;
			tut3.y = 20;
			tut3.alpha = 0;
			addChild(tut3);
			
			tut4  = Assets.imagem(Assets.tut4);
			tut4.x = 350;
			tut4.y = 20;
			tut4.alpha = 0;
			addChild(tut4);
			
			addChild(button1);
			button1.x = 30;
			button1.y = 260;
			button1.useHandCursor = true;
			button1.touchable = true;
			//button1.enabled = true;
			
			
			
			
			//button2.addEventListener(Event.TRIGGERED, onButtonTriggered2);
			
		
			
			button1.addEventListener(Event.TRIGGERED, playbut);
			addEventListener(EnterFrameEvent.ENTER_FRAME, frameupdate);
		}
		
		public function frameupdate(event:EnterFrameEvent):void {
		gou();
		
	
		}
		
	private function playbut(evento:Event):void
    {
			buto.play();
            var tela:Inicio;
			tela = new Inicio();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			
    }
		public function gou():void {
		if (anim <= 80) {
		tut1.alpha = 1; tut2.alpha = 0;
		tut3.alpha = 0;tut4.alpha = 0;
		anim++;
		}	
		if (anim > 80 && anim <= 160) {
		tut1.alpha = 0; tut2.alpha = 1;
		tut3.alpha = 0;tut4.alpha = 0;
		anim++;
		}	
		if (anim > 160 && anim <= 240) {
		tut1.alpha = 0; tut2.alpha = 0;
		tut3.alpha = 1;tut4.alpha = 0;
		anim++;
		}	
		if (anim > 240 && anim <= 320) {
		tut1.alpha = 0; tut2.alpha = 0;
		tut3.alpha = 0;tut4.alpha = 1;
		anim++;
		}
		if (anim > 320 && anim <= 3000) {
		anim = 0;
		}
		}
	}

}
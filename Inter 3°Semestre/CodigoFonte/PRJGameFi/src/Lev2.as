package
{
	//Importações de pacotes
	import flash.media.SoundMixer; 
	import flash.media.Sound; 
	import flash.media.SoundChannel; 
	import adobe.utils.CustomActions;
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.display.Stage;
	import starling.extensions.PDParticle;
	import starling.extensions.PDParticleSystem;
	import starling.text.TextField;
	import flash.ui.Keyboard;
	import starling.display.Image;
	import starling.events.EnterFrameEvent;
	import starling.events.KeyboardEvent;
	import flash.geom.Rectangle;
	import starling.events.Event;
	import starling.display.DisplayObject;
	import starling.filters.ColorMatrixFilter;

	
	public class Lev2 extends Sprite
	{   //Variaveis comuns
		private var dire:Boolean = true;
		private var zKeyDown:Boolean = false;
		private var xKeyDown:Boolean = false;
		private var leftKeyDown:Boolean = false;
		private var upKeyDown:Boolean = false;
		private var rightKeyDown:Boolean = false;
		private var pKeyDown:Boolean = false;
		private var downKeyDown:Boolean = false;
		public var vida:int = Globais.vidaMAx;
		private var move:Boolean = true;
		private var Lev2nd:TextField = new TextField(360, 240, "", "Arial", 100, 0x9b14e7);
		private var paus:TextField = new TextField(700, 440, "PAUSED", "Arial Black", 20, 0x000000);
		private var golpe:int = 15;
		private var golpepode:Boolean = true;
		private var stun:int = 15;
		private var stunpode:Boolean = true;
		private var vetor:int = 0;
		private var traX:int = 360;
		private var traY:int = 260;
		private var defend:Boolean = false;
		private var escudi:int = 3;
		private var tipoat:int = 0;
		private var IZ:Boolean = false;
		
		private var filterRed:ColorMatrixFilter = new ColorMatrixFilter();
		private var filterBla:ColorMatrixFilter = new ColorMatrixFilter();
		private var filterPur:ColorMatrixFilter = new ColorMatrixFilter();

		//Objetos:
		private var Player:Char;
	
		private var platafo:Array;
		private var ruim:Array;
		private var pipo:Array;
		private var sangue:Array;
		
		private var hitV:Bloqui;
		private var hitH:Bloqui;
		private var tiro:Tirao;
		private var vitoria:Bloqui;
		
		public var arte:Image;
		public var arte2:Image;
		public var arte3:Image;
		public var arte4:Image;
		public var arte5:Image;
		public var arte6:Image;
		public var le1:Image;
		public var le2:Image;
		public var le15:Image;
		public var ext:Image;
		public var ext2:Image;
		
		private var meio:Sprite;
		private var cam1:Sprite;
		private var cam2:Sprite;
		private var cam3:Sprite;
		private var joga:Sprite;
		
		private var barraV:Barras;
		private var barraD:Barras;
		private var canva:Barras;
		
		private var canal:SoundChannel;
		
		private var pausado:Boolean = false;
		//private var touch:Touch = Event.getTouch(stage);
		

		
		[Embed(source="../assets/som/fasemili.mp3")]
		private static var FASE:Class;
		public var fase:Sound = new FASE as Sound;
		[Embed(source = "../assets/som/machu.mp3")] 
		private const MACHU:Class;
		public var machu:Sound = new MACHU() as Sound;
		[Embed(source = "../assets/som/pain.mp3")] 
		private const PAIN:Class;
		public var pain:Sound = new PAIN() as Sound;
		[Embed(source = "../assets/som/azat.mp3")] 
		private const AZAT:Class;
		public var azat:Sound = new AZAT() as Sound;
		[Embed(source="../assets/som/morte.mp3")]
		private static var MORTE:Class;
		public var morte:Sound = new MORTE as Sound;
		[Embed(source = "../assets/som/golpe.mp3")] 
		private const GOLPE:Class;
		public var golpeu:Sound = new GOLPE() as Sound;
		[Embed(source = "../assets/som/andar2.mp3")] 
		private const ANDAR:Class;
		public var andar:Sound = new ANDAR() as Sound;
		[Embed(source = "../assets/som/pulo.mp3")] 
		private const PULO:Class;
		public var pulo:Sound = new PULO() as Sound;
		[Embed(source = "../assets/som/tiro.mp3")] 
		private const TIRO:Class;
		public var tirou:Sound = new TIRO() as Sound;
		
		[Embed(source = "../assets/som/pasdano.mp3")] 
		private const PASDANO:Class;
		public var pasdano:Sound = new PASDANO() as Sound;
		[Embed(source = "../assets/som/pasmor.mp3")] 
		private const PASMOR:Class;
		public var pasmor:Sound = new PASMOR() as Sound;
		[Embed(source = "../assets/som/risada.mp3")] 
		private const RISADA:Class;
		public var risada:Sound = new RISADA() as Sound;
		[Embed(source = "../assets/som/tigat.mp3")] 
		private const TIGAT:Class;
		public var tigat:Sound = new TIGAT() as Sound;
		[Embed(source = "../assets/som/tigdan.mp3")] 
		private const TIGDAN:Class;
		public var tigdan:Sound = new TIGDAN() as Sound;
		[Embed(source = "../assets/som/tigdie.mp3")] 
		private const TIGDIE:Class;
		public var tigdie:Sound = new TIGDIE() as Sound;
		[Embed(source = "../assets/som/tordano.mp3")] 
		private const TORDANO:Class;
		public var tordano:Sound = new TORDANO() as Sound;
		[Embed(source = "../assets/som/tordie.mp3")] 
		private const TORDIE:Class;
		public var tordie:Sound = new TORDIE() as Sound;
		[Embed(source = "../assets/som/tortaque.mp3")] 
		private const TORTAQUE:Class;
		public var tortaque:Sound = new TORTAQUE() as Sound;
		
		public function Lev2()
		
		{
			Globais.level = 2;
			Globais.toca = true;
			SoundMixer.stopAll();
			fase.play(0, int.MAX_VALUE);
			
			meio = new Sprite();
			cam1 = new Sprite();
			cam2 = new Sprite();
			cam3 = new Sprite();
			joga = new Sprite();
			
			/*arte  = Assets.imagem(Assets.cam31);
			arte.width = 2000;
			arte.height = 1400;
			arte.x = -300;
			arte.y = -920;
			cam3.addChild(arte);
			
			arte2  = Assets.imagem(Assets.cam32);
			arte2.width = 1000;
			arte2.height = 1400;
			arte2.x = 1700;
			arte2.y = -920;
			cam3.addChild(arte2);
			
			arte3  = Assets.imagem(Assets.cam21);
			arte3.width = 2000;
			arte3.height = 1400;
			arte3.x = -300;
			arte3.y = -920;
			cam2.addChild(arte3);
			
			arte4  = Assets.imagem(Assets.cam22);
			arte4.width = 1000;
			arte4.height = 1400;
			arte4.x = 1700;
			arte4.y = -920;
			cam2.addChild(arte4);
			
			arte5  = Assets.imagem(Assets.cam11);
			arte5.width = 2000;
			arte5.height = 1400;
			arte5.x = -300;
			arte5.y = -920;
			cam1.addChild(arte5);
			
			arte6  = Assets.imagem(Assets.cam12);
			arte6.width = 1000;
			arte6.height = 1400;
			arte6.x = 1700;
			arte6.y = -920;
			cam1.addChild(arte6);
			
			le15  = Assets.imagem(Assets.le15);
			le15.width = 2000;
			le15.height = 1600;
			le15.x = 50;
			le15.y = -960;
			meio.addChild(le15);
			
			le1 = Assets.imagem(Assets.le1);
			le1.width = 2000;
			le1.height = 1600;
			le1.x = 50;
			le1.y = -960;
			meio.addChild(le1);
			
			le2  = Assets.imagem(Assets.le2);
			le2.width = 1000;
			le2.height = 1600;
			le2.x = 2050;
			le2.y = -960;
			meio.addChild(le2);*/
			
			
			le15  = Assets.imagem(Assets.milita);
			le15.width = 2048;
			le15.height = 2048;
			le15.x = -300;
			le15.y = -300;
			cam2.addChild(le15);
			
			arte6  = Assets.imagem(Assets.milita);
			arte6.width = 2048;
			arte6.height = 2048;
			arte6.x = 1748;
			arte6.y = -300;
			cam2.addChild(arte6);
			
			
			ext  = Assets.imagem(Assets.q11);
			ext.width = 2048;
			ext.height = 1400;
			ext.x = 100;
			ext.y = -63;
			meio.addChild(ext);
			
			ext2  = Assets.imagem(Assets.q12);
			ext2.width = 1000;
			ext2.height = 1400;
			ext2.x = 2100;
			ext2.y = -63;
			meio.addChild(ext2);
			
			addChild(cam3);
			addChild(cam2);
			addChild(cam1);
			addChild(meio);
			addChild(paus);
			
			addChild(Lev2nd);
			
			filterRed.tint(0xFF0000, 0.8);
			filterBla.tint(0x000000, 1);
			filterPur.tint(0x9b14e7, 0.8);
			
			platafo = new Array();
			ruim = new Array();
			pipo = new Array();
			
			criainimigos(650, 290, 0xff0000, "soldado");
			criainimigos(850, 290, 0xff0000, "soldado");
			criainimigos(1650, 290, 0xff0000, "soldado");
			criainimigos(2450, 290, 0xff0000, "soldado");
			criainimigos(2200, 100, 0xff0000, "soldado");
			criainimigos(1350, 100, 0xff0000, "soldado");
			criainimigos(2450, 100, 0xff0000, "soldado");
			
			criainimigos(1250, 290, 0xff0000, "atira");
			criainimigos(1800, 290, 0xff0000, "atira");
			criainimigos(2600, 290, 0xff0000, "atira");
			criainimigos(1100, 100, 0xff0000, "atira");
			criainimigos(2220, 100, 0xff0000, "atira");
			criainimigos(2500, 100, 0xff0000, "atira");
			
			criainimigos(-350, 900, 0xff00ff, "atira");
			
			
			criaplataforma(3000, -510, 500, 900, 0x00ff00, 1);
			criaplataforma(-350, -810, 500, 1200, 0x00ff00, 1);
			criaplataforma( 700, 140, 2000, 20, 0x00ff00, 2);
			criaplataforma( 2700, 190, 50, 20, 0x00ff00, 2);
			criaplataforma( 650, 190, 50, 20, 0x00ff00, 2);
			criaplataforma( 1300, 330, 50, 50, 0x00ffff, 4);
			criaplataforma( 2400, 330, 50, 50, 0x00ffff, 4);
			criaplataforma( -3500, 340, 7000, 100, 0x00ff00, 1);
			criaplataforma( -3500, -110, 7000, 100, 0x00ff00, 1);
			
			canva = new Barras();
			addChild(canva);
			canva.fundo3.alpha = 1;
			canva.x = 0;
			canva.y = 0;
			
			barraV = new Barras();
			addChild(barraV);
			barraV.fundo.alpha = 1;
			barraV.x = 70;
			barraV.y = 10;
			
			barraD = new Barras();
			addChild(barraD);
			barraD.fundo2.alpha = 1;
			barraD.x = 70;
			barraD.y = 40;
			
			vitoria = new Bloqui(70, 20, 0x5F4C0B);
			meio.addChild(vitoria);
			vitoria.x = 2840;
			vitoria.y = 320;
		
			hitV = new Bloqui(60, 80, 0x9b14e7);
			addChild(hitV);
			hitV.x = -1500;
			hitV.y = -800;
			hitV.alpha = 0;

			hitH = new Bloqui(90, 20, 0x9b14e7);
			addChild(hitH);
			hitH.x = -1500;
			hitH.y = -800;
			hitH.alpha = 0;
			
			tiro = new Tirao();
			addChild(tiro);
			tiro.x = -1500;
			tiro.y = -800;
			
			
			//Criando o jogador
			Player = new Char();
			addChild(Player);
			Player.x = 340;
			Player.y = 300;
			Player.hitbox().filter = filterBla;
			
			
			
			//Update do jogo todo
			addEventListener(EnterFrameEvent.ENTER_FRAME, frameupdate);
			
			//Traquear o pressionamento de uma tecla
			addEventListener(KeyboardEvent.KEY_DOWN, press);
			
			//Traquear a soltura de uma tecla
			addEventListener(KeyboardEvent.KEY_UP, release);
		}
		
		//Definir tudo que ocorre de fato, modo dinamico da classe
		
		public function frameupdate(event:EnterFrameEvent):void
		{
			
			if (pausado == true) {	
			stage.alpha = 0.8;
			paus.alpha = 1;
			}else {
			stage.alpha = 1;
			paus.alpha = 0;
			Player.end = true;
			atatip();
			atualizainimigo();
			updatePlayer();
			camera();
			//updateInimigos();
			Player.x = 340;
			timers();
			stuna();
			gameover();
			vaibala();
			matacarai();
			debug();
			turn();
			//}
			trace(traX);
			}
		}
	
		//funcão pra definir o pressionamento de teclas
		public function press(event:KeyboardEvent):void
		{
			if (event.keyCode == 80) {
				if(pKeyDown == true){
				pausado = false; 
				}else{
				pausado = true;
				}
			}
			if (event.keyCode == 38 || event.keyCode == 87) upKeyDown = true;
			if (event.keyCode == 40 || event.keyCode == 83) downKeyDown = true;
			if (event.keyCode == 37 || event.keyCode == 65)
			{
				if (dire) {
				if (Player.anim != 0) Player.anim = 0;
				}
				leftKeyDown = true;
				dire = false;
				
			}
			
			if (event.keyCode == 39 || event.keyCode == 68)
			{
				if (!dire) {
				if (Player.anim != 0) Player.anim = 0;
				}
				rightKeyDown = true;
				dire = true;
				
			}
			if (event.keyCode == 88) xKeyDown = true;
			if (event.keyCode == 90) zKeyDown = true;
		}
		
		//funcão pra definir a soltura de teclas
		public function release(event:KeyboardEvent):void
		{
			if (event.keyCode == 80) {
				if(pKeyDown == true){
				pKeyDown = false;
				}else{ 
				pKeyDown = true;
				}
			}
			if (event.keyCode == 38 || event.keyCode == 87) upKeyDown = false;
			if (event.keyCode == 40 || event.keyCode == 83) downKeyDown = false;
			if (event.keyCode == 37 || event.keyCode == 65)
			{
				leftKeyDown = false;
				
			}
			if (event.keyCode == 39 || event.keyCode == 68)
			{
				rightKeyDown = false;
				
			}
			if (event.keyCode == 88){
				 xKeyDown = false;
			}
			if (event.keyCode == 90){
				 zKeyDown = false;
			}
		
		}
		
		
		//funcão pra definir a colisão de sprites de objetos
		public function colision(obj1:DisplayObject, obj2:DisplayObject):Boolean
		{
			var area1:Rectangle = obj1.getBounds(stage);
			var area2:Rectangle = obj2.getBounds(stage);
			
			if (area1.intersects(area2))
			{
				return true;
			}
			return false;
		}
		
	 public function inter(obj1:DisplayObject, obj2:DisplayObject):Rectangle
		{
			var area1:Rectangle = obj1.getBounds(stage);
			var area2:Rectangle = obj2.getBounds(stage);
			
			return area1.intersection(area2);
		}
	
		
		
	
		public function colisoesX():void
		{
			for (var i:int = 0; i < platafo.length; i++){ 
			if (colision(Player.hitbox(), platafo[i])) {
				if(platafo[i].tipo < 3){
				
					var area:Rectangle = inter(Player.hitbox(),platafo[i]);
					if (Player.velocidadeX > 0)
					{
						Player.x -= area.width;
						Player.velocidadeX = 0;
					}
					else if (Player.velocidadeX < 0)
					{
						Player.x += area.width;
						Player.velocidadeX = 0;
					}
				}
			}
		}
			
		}
		public function colisoesY():void
		{
			for (var i:int = 0; i < platafo.length; i++){ 
				if (colision(Player.hitbox(), platafo[i])) {
					if(platafo[i].tipo == 1){
						var area:Rectangle = inter(Player.hitbox(), platafo[i]);
						if (Player.velocidadeY > 0) {		
							meio.y += area.height;
							Player.velocidadeY = 0;
							Player.estado = "chao";	
							
						} else if (Player.velocidadeY < 0) {
							meio.y -= area.height;
							Player.velocidadeY = 0;
							Player.estado = "ar";
						}
					} else if(platafo[i].tipo == 2){
						var area:Rectangle = inter(Player.hitbox(), platafo[i]);
						if (downKeyDown) {	
							Player.estado = "ar";
						}else{
						if (Player.velocidadeY > 0)
						{
							meio.y += area.height;
							Player.velocidadeY = 0;
							Player.estado = "chao";
						}
					}
				} else if(platafo[i].tipo == 3){
						var area:Rectangle = inter(Player.hitbox(), platafo[i]);
						if (Player.velocidadeY > 0)
						{
							
							meio.y += area.height;
							Player.velocidadeY = 0;
							Player.estado = "chao";
							vida -= 3;
							golpe = 20;
							golpepode = false;
							Player.end = true;
							tipoat = 4;
							machu.play();
							meio.x += 5;
						} else if (Player.velocidadeY < 0)
						{
							meio.y -= area.height;
							Player.velocidadeY = 0;
							Player.estado = "ar";
						}
					} else if(platafo[i].tipo == 4){
						var area:Rectangle = inter(Player.hitbox(), platafo[i]);
						if (Player.velocidadeY > 0)
						{
							meio.y += area.height;
							Player.estado = "chao";
							vida -= 3;
							golpe = 20;
							golpepode = false;
							Player.end = true;
							tipoat = 4;
							machu.play();
							//meio.x += 5;
							Player.velocidadeY -= 42;
					
						}
						else if (Player.velocidadeY < 0)
						{
							meio.y -= area.height;
							Player.velocidadeY = 0;
							Player.estado = "ar";
						}
				}
			}
		}	
			
		}
		//função da camera/movimento
		public function camera():void
		{
		meio.y -= Player.velocidadeY;
		meio.x -= Player.velocidadeX;
		cam1.x = meio.x * 0.7;
		cam2.x = meio.x * 0.4;
		cam3.x = meio.x * 0.2;
		cam1.y = meio.y * 0.4;
		cam2.y = meio.y * 0.3;
		cam3.y = meio.y * 0.1;
		traX += Player.velocidadeX;
		traY += Player.velocidadeY;
		}
		

		//função do hitbox de ataque
		public function atac():void {
			if (golpepode && tipoat == 0 && Player.end){
				if (downKeyDown && xKeyDown && golpepode) {
					Player.velocidadeY += 2;
					if (Player.estado == "ar") {
						golpeu.play();
						Player.anim = 0;
						tipoat = 3;
						if (dire){
							hitH.x = Player.x - 10;
							hitH.y = Player.x + 40;
							hitV.x = Player.x + 20;
							hitV.y = 300;
							golpepode = false;
						
						} else {
							hitH.x = Player.x - 80;
							hitH.y = Player.x + 40;
							hitV.x = Player.x - 80;
							hitV.y = 300;
							golpepode = false;
						
						}	
					} else {
						Player.anim = 0;
						golpeu.play();
						tipoat = 1;
						if (dire){
							hitV.x = Player.x + 20 ;
							hitV.y = 300;
							golpepode = false;
						} else {
							hitV.x = Player.x - 80;
							hitV.y = 300;
							golpepode = false;
						}
					}
				}
			 else if (upKeyDown && xKeyDown && golpepode) {
				if (Player.estado == "ar") {
					golpeu.play();
					Player.anim = 0;
					tipoat = 2;
					if (dire){
						hitH.x = Player.x - 10;
						hitH.y = Player.x - 55;
						
						hitV.x = Player.x + 20;
						hitV.y = 300;
						golpepode = false;
					} else {
						hitH.x = Player.x - 80;
						hitH.y = Player.x - 55;
						
						hitV.x = Player.x - 80;
						hitV.y = 300;
						golpepode = false;
					}	
				} else {
					Player.anim = 0;
					golpeu.play();
					tipoat = 1;
					if (dire){
						hitV.x = Player.x + 20;
						hitV.y = 300;
						golpepode = false;
					} else {
						hitV.x = Player.x - 80;
						hitV.y = 300;
						golpepode = false;
					}
				}
			} else if (xKeyDown && golpepode && !zKeyDown) {
				Player.anim = 0;
				tipoat = 1;
				golpeu.play();
				if (dire) {	
					hitV.x = Player.x + 20;
					hitV.y = 300;
					golpepode = false;
				} else {
					hitV.x = Player.x - 80;
					hitV.y = 300;
					golpepode = false;
				}	
			}
			if (zKeyDown && xKeyDown && golpepode) {
				Player.atirando();
				Player.anim = 0;
				tipoat = 5;
				tirou.play()
				if (dire){
				    tiro.x = Player.x + 20;
					tiro.y = 310;
					vetor = 20;
					Player.hitbox().filter = filterPur;
					stun = 60;
					stunpode = false;
				} else {
					tiro.x = Player.x - 40;
					tiro.y = 310;
					vetor = -20;
					Player.hitbox().filter = filterPur;
					stun = 60;
					stunpode = false;
				}	
			}
		}
		}
		public function defesa():void {
			if(Player.estado == "chao"){
				if (zKeyDown && golpepode && !xKeyDown) {
					Player.defende();
					Player.estado = "defesa";
					if (dire){
						Player.hitbox().filter = filterRed;
						golpepode = false;
						defend = true;
					} else {
						Player.hitbox().filter = filterRed;
						golpepode = false;
						defend = true;
					}	
				}	
			}
		}
		public function timers():void {
			if (!golpepode) {
				golpe -= 1;
				move = false;
				
			}
			if (golpe <= 0) {
				//Player.anim = 0;
				hitV.x = -1500;
				hitV.y = -800;
				hitH.x = -1500;
				hitH.y = -800;
				tiro.x = -1500;
				tiro.y = -800;
				defend = false;
				vetor = 0;
				Player.hitbox().filter = filterBla;
				golpepode = true;
				golpe = 15;
				move = true;
				tipoat = 0;
				if (Player.estado == "ar") Player.pulo();
				if(Player.estado == "chao")Player.para();
				//Player.para();
			}
		}
		public function stuna():void {
			if (!stunpode) {
				stun -= 1;
				move = false;
				
			}
			if (stun <= 0) {
				//Player.anim = 0;
				hitV.x = -1500;
				hitV.y = -800;
				hitH.x = -1500;
				hitH.y = -800;
				tiro.x = -1500;
				tiro.y = -800;
				defend = false;
				vetor = 0;
				Player.hitbox().filter = filterBla;
				stunpode = true;
				stun = 15;
				move = true;
				tipoat = 0;
				if (Player.estado == "ar") Player.pulo();
				if(Player.estado == "chao")Player.para();
				//Player.para();
				if (escudi <= 0) {
				escudi = 3;	
				}
			}
		}
		
		private function criaplataforma(x:int, y:int, l:int, a:int, cor:int,tipo:int):void
		{
			var obj:Bloqui;
			obj = new Bloqui(l,a,cor);
			obj.x = x;
			obj.y = y;
			obj.alpha = 0;
			obj.tipo = tipo;
			meio.addChild(obj);  //faz com que as plataformas sejam criadas dentro do meio
			platafo.push(obj);
		}
		
		private function criainimigos(x:int, y:int,cor:int,tipo:String):void
		{
			var ini:Inimigos;
			ini = new Inimigos(40, 60, cor);
			ini.tipo = tipo;
			if (tipo == "soldado") ini.vida = 2;
			if (tipo == "atira") ini.vida = 1;
			if (tipo == "berserk") {
				ini.vida = 4;
				ini.corpo.alpha = 0;
				ini.corpo.height = 80;
				ini.corpo.width = 100;
			}
			if (tipo == "passaro") {
				ini.vida = 2;
				ini.corpo.alpha = 0;
				ini.corpo.height = 80;
				ini.corpo.width = 40;
			}
			if (tipo == "touro") {
				ini.vida = 5;
				ini.corpo.alpha = 0;
				ini.corpo.height = 120;
				ini.corpo.width = 120;
			}
			if (tipo == "shaman") {
				ini.vida = 10;
				ini.corpo.alpha = 0;
				ini.corpo.height = 80;
				ini.corpo.width = 40;
			}
			if (tipo == "tigre") {
				ini.vida = 3;
				ini.corpo.alpha = 0;
				ini.corpo.height = 80;
				ini.corpo.width = 40;
			}
			ini.x = x;
			ini.y = y;
			meio.addChild(ini);  //faz com que as plataformas sejam criadas dentro do meio
			ruim.push(ini);
		}
		
		public function sangra(x:int, y:int, sca:int, emi:int):void {
			var sng:PDParticleSystem = Assets.particula(Assets.blood, Assets.bloodpex);
			sng.x = x;
			sng.y = y;
			sng.startSize = sca;
			sng.emissionRate = emi;
			meio.addChild(sng);  //faz com que as plataformas sejam criadas dentro do meio
			Starling.juggler.add(sng);
			sng.start(0.2);
			
		}
		
		public function atualizainimigo():void {
		for (var i:int = 0; i < ruim.length; i++) {
			ruim[i].gravi += 1;	
					if (ruim[i].tipo == "soldado") {
						ruim[i].gou();
						if(golpepode == true){
							if (ruim[i].x > traX && ruim[i].x - traX < 360) {
							ruim[i].velo = -4;
							ruim[i].scaleX = -1;
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 360) {
							ruim[i].velo = 4;
							ruim[i].scaleX = 1;
							}
							if (colision(ruim[i].hitbox(), Player.hitbox()) && !defend) {
							 	azat.play();
								vida -= 5;
								golpe = 20;
								golpepode = false;
								Player.end = true;
								tipoat = 4;
								machu.play();
							}else if (colision(ruim[i].hitbox(), Player.hitbox()) && defend) {
								azat.play();
								escudi --
								if (escudi <= 0) {
								stun = 80;
								stunpode = false;
								defend = false;
								Player.end = true;
								tipoat = 5;
								
								}
							}
						} else {
							if (ruim[i].x > traX && ruim[i].x - traX < 150) {
							ruim[i].velo = 2;
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 150) {
							ruim[i].velo = -2;
							}
						}
					}
					if (ruim[i].tipo == "berserk") {
						if (ruim[i].velo == 0) {
						ruim[i].berpara();
						}else {
						ruim[i].berand();
						}
						if(golpepode == true){
							if (ruim[i].x > traX && ruim[i].x - traX < 360) {
							ruim[i].velo = -6;
							ruim[i].scaleX = -1;
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 360) {
							ruim[i].velo = 6;
							ruim[i].scaleX = 1;
							}
							if (colision(ruim[i].hitbox(), Player.hitbox()) && !defend) {
							 	azat.play();
								vida -= 7;
								golpe = 20;
								golpepode = false;
								Player.end = true;
								tipoat = 4;
								machu.play();
							}else if (colision(ruim[i].hitbox(), Player.hitbox()) && defend) {
								escudi --
								if (escudi <= 0) {
								stun = 80;
								stunpode = false;
								defend = false;
								Player.end = true;
								tipoat = 5;
								
								}
							}
						} else {
							if (ruim[i].x > traX && ruim[i].x - traX < 150) {
							ruim[i].velo = 3;
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 150) {
							ruim[i].velo = -3;
							}
						}
					}
					if (ruim[i].tipo == "tigre") {
						ruim[i].tigpul();
						if(golpepode == true){
							if (ruim[i].x > traX && ruim[i].x - traX < 360 && ruim[i].pode) {
							ruim[i].gravi -= 16 
							ruim[i].velo = -4;
							ruim[i].scaleX = -1;
							ruim[i].pode = false;
							}
							if (ruim[i].x  < traX && traX - ruim[i].x < 360 && ruim[i].pode) {
							ruim[i].gravi -= 16 
							ruim[i].velo = 4;
							ruim[i].scaleX = 1;
							ruim[i].pode = false;
							}
							if (colision(ruim[i].hitbox(), Player.hitbox()) && !defend) {
							 	tigat.play();
								vida -= 6;
								golpe = 20;
								golpepode = false;
								Player.end = true;
								tipoat = 4;
								ruim[i].velo = 0;
								ruim[i].gravi = 1;
								machu.play();
							}else if (colision(ruim[i].hitbox(), Player.hitbox()) && defend) {
								escudi --
								ruim[i].velo = 0;
								ruim[i].gravi = 1;
								if (escudi <= 0) {
								stun = 80;
								stunpode = false;
								defend = false;
								Player.end = true;
								tipoat = 5;
								
								}
							}
						} else {
							if (ruim[i].x > traX && ruim[i].x - traX < 150) {
							if (colision(Player.hitbox(), ruim[i].hitbox())){
							var area:Rectangle = inter(Player.hitbox(), ruim[i].hitbox());
							ruim[i].x += area.width;
							}
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 150) {
							if (colision(Player.hitbox(), ruim[i].hitbox())){
							var area:Rectangle = inter(Player.hitbox(), ruim[i].hitbox());
							ruim[i].x -= area.width;
							}
							}
						}
					}
					if (ruim[i].tipo == "touro") {
						if (ruim[i].velo == 0) {
						ruim[i].torpar();
						}else {
						ruim[i].torand();
						}	
						if(golpepode == true){
							if (ruim[i].x > traX && ruim[i].x - traX < 360) {
							if (ruim[i].x - traX < 150) ruim[i].velo = -8;
							else{
							ruim[i].velo = -2;
							}
							ruim[i].scaleX = -1;
							
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 360) {
							if (traX - ruim[i].x < 150) ruim[i].velo = 8;
							else{
							ruim[i].velo = 2;
							}
							ruim[i].scaleX = 1;
							}
							if (colision(ruim[i].hitbox(), Player.hitbox()) && !defend) {
							 	tortaque.play();
								vida -= 15;
								golpe = 20;
								golpepode = false;
								Player.end = true;
								tipoat = 4;
								machu.play();
							}else if (colision(ruim[i].hitbox(), Player.hitbox()) && defend) {
								escudi --
								if (escudi <= 0) {
								stun = 80;
								stunpode = false;
								defend = false;
								Player.end = true;
								tipoat = 5;
								
								}
							}
						} else {
							if (ruim[i].x > traX && ruim[i].x - traX < 150) {
							ruim[i].velo = 3;
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 150) {
							ruim[i].velo = -3;
							}
						}
					}
					if (ruim[i].tipo == "shaman") {
						ruim[i].xama();
						if(golpepode == true){
							if (ruim[i].x > traX && ruim[i].x - traX < 360) {
							if (ruim[i].x - traX < 150) ruim[i].velo = -8;
							else{
							ruim[i].velo = -2;
							}
							ruim[i].scaleX = -1;
							
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 360) {
							if (traX - ruim[i].x < 150) ruim[i].velo = 8;
							else{
							ruim[i].velo = 2;
							}
							ruim[i].scaleX = 1;
							}
							if(ruim[i].x - traX < 360){
							if(ruim[i].x > traX && ruim[i].pode){
							criabalas(ruim[i].x - 20, ruim[i].y + 10, 5, -5)
							ruim[i].scaleX = -1;
							ruim[i].pode = false;
								}
							}
								if(traX - ruim[i].x < 360){
							if(ruim[i].x < traX && ruim[i].pode){
							criabalas(ruim[i].x + 20, ruim[i].y + 10, 5, 5)
							ruim[i].scaleX = 1;
							ruim[i].pode = false;
								}
							}
							if (colision(ruim[i].hitbox(), Player.hitbox()) && !defend) {
							 	risada.play();
								vida -= 8;
								golpe = 20;
								golpepode = false;
								Player.end = true;
								tipoat = 4;
								machu.play();
							}else if (colision(ruim[i].hitbox(), Player.hitbox()) && defend) {
								escudi --
								if (escudi <= 0) {
								stun = 80;
								stunpode = false;
								defend = false;
								Player.end = true;
								tipoat = 5;
								
								}
							}
						} else {
							if (ruim[i].x > traX && ruim[i].x - traX < 150) {
							ruim[i].velo = 3;
							}
							else if (ruim[i].x  < traX && traX - ruim[i].x < 150) {
							ruim[i].velo = -3;
							}
						}
					}
					if (ruim[i].tipo == "atira") {
						ruim[i].tir();
						if(ruim[i].x - traX < 360){
							if(ruim[i].x > traX && ruim[i].pode){
							criabalas(ruim[i].x - 20, ruim[i].y + 10, 5, -5)
							ruim[i].scaleX = -1;
							ruim[i].pode = false;
							}
						}
						if(traX - ruim[i].x < 360){
							if(ruim[i].x < traX && ruim[i].pode){
							criabalas(ruim[i].x + 20, ruim[i].y + 10, 5, 5)
							ruim[i].scaleX = 1;
							ruim[i].pode = false;
							}
						}
						}
						if (ruim[i].tipo == "passaro") {
						if (ruim[i].velo == 0) {
						ruim[i].paspar();
						}else {
						ruim[i].pasand();
						}	
						if (ruim[i].x > traX && ruim[i].x - traX < 250) {
						ruim[i].velo = 3;
						}
						else if (ruim[i].x  < traX && traX - ruim[i].x < 250) {
						ruim[i].velo = -3;
						}
						if (ruim[i].x - traX < 360) {
				
							
							if(ruim[i].x > traX && ruim[i].pode){
							criabalas(ruim[i].x - 20, ruim[i].y + 18, 7, -5)
							ruim[i].scaleX = -1;
							ruim[i].pode = false;
							}
						}
						if (traX - ruim[i].x < 360) {
						
							if(ruim[i].x < traX && ruim[i].pode){
							criabalas(ruim[i].x + 20, ruim[i].y + 18, 7, 5)
							ruim[i].scaleX = 1;
							ruim[i].pode = false;
							}
						}
						}
					ruim[i].x += ruim[i].velo;
					ruim[i].y += ruim[i].gravi;
					if (ruim[i].timer <= 0) {
						ruim[i].pode = true;
						ruim[i].timer = 60;
					}
					ruim[i].timer --;
					
						for (var e:int = 0; e < platafo.length; e++) {
						if (colision(ruim[i].hitbox(), platafo[e])) {
							if (ruim[i].tipo == "tigre") {
								ruim[i].velo = 0;
								ruim[i].tigpar();
							}
						
						if (ruim[i].y < platafo[e].y - ruim[i].height/2 ) {	
						var area:Rectangle = inter(ruim[i].hitbox(), platafo[e]);
							ruim[i].y -= area.height;
							ruim[i].gravi = 0;
						}
						else {
						var area:Rectangle = inter(ruim[i].hitbox(), platafo[e]);
						if (ruim[i].tipo == "soldado") ruim[i].sto();
						//if (ruim[i].tipo == "berserk") ruim[i].berpar();
						//if (ruim[i].tipo == "touro") ruim[i].torpar();
						if (ruim[i].velo > 0)
						{
						ruim[i].x -= area.width;
						ruim[i].velo = 0;
						}
						else if (ruim[i].velo < 0)
						{
						ruim[i].x += area.width;
						ruim[i].velo = 0;
						}		
					}
				}		
			}
			
				
					for (var j:int = 0; j < ruim.length; j++) {
						if (j != i) {
					if (colision(ruim[i].hitbox(), ruim[j].hitbox())) {
						
						
					var area:Rectangle = inter(ruim[i].hitbox(), ruim[j].hitbox());
					
						if (ruim[i].tipo == "soldado") ruim[i].sto();
						//if (ruim[i].tipo == "berserk") ruim[i].berpar();
						//if (ruim[i].tipo == "touro") ruim[i].torpar();
						if (ruim[i].velo > 0)
						{
						ruim[i].x -= area.width;
						ruim[i].velo = 0;
						}
						else if (ruim[i].velo < 0)
						{
						ruim[i].x += area.width;
						ruim[i].velo = 0;
						}
					}
				}
			}
		}
	}
	/*public function tutorial():void {
	if (traX <= 400) {
	anuncio.text = "Use the arrow keys or WASD to move and jump"
	}
	if (traX >= 401 && traX <= 1000) {
	anuncio.text = "Use X to Attack and Z to defend"	
	}
	if (traX >= 1001 && traX <= 1500) {
    anuncio.text = "Use X plus Z to shoot"	
	}
	if (traX >= 1501 && traX <= 1900) {
    anuncio.text = "Combine move keys with X to attack high and low"
	}
	if (traX >= 1901 && traX <= 2500) {
    anuncio.text = "Blocking till you have no more defenses stuns you"
	}
	if (traX >= 2501 && traX <= 3000) {
    anuncio.text = "Drop down to pass to the next level"
	}
		
	}	*/
		//função de gameover
		public function gameover():void {
			if (vida <= 0)
			{
			SoundMixer.stopAll();
			var tela:Gameover;
			tela = new Gameover();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			}
			}
		
		public function criabalas(x:int, y:int, dano:int, veloci:int):void {
			var bal:Balas;
			bal = new Balas();
			bal.dano = dano;
			bal.veloci = veloci;
			bal.x = x;
			bal.y = y;
			meio.addChild(bal);  //faz com que as plataformas sejam criadas dentro do meio
			pipo.push(bal);
		}
		public function vaibala():void {
		for (var i:int = 0; i < pipo.length; i++) {
			
			pipo[i].x += pipo[i].veloci;
				/*for (var e:int = 0; e < platafo.length; e++) {
					if (colision(pipo[i], platafo[e])) {
				   // pipo[i].splice( i, 1 );
					meio.removeChild( pipo[i] );
					pipo.splice( i, 1 );
					
					}
				}*/
			if (colision(pipo[i], Player.hitbox()) && !defend) {
				vida -= pipo[i].dano;
				golpe = 20;
				golpepode = false;
				tipoat = 4;
				machu.play();
				    meio.removeChild( pipo[i] );
					pipo.splice( i, 1 );
				
				}else if (colision(pipo[i], Player.hitbox()) && defend) {
					escudi --
					meio.removeChild( pipo[i] );
					pipo.splice( i, 1 );
					if (escudi <= 0) {
						stun = 80;
						stunpode = false;
						defend = false;
					}
				}
			//	//if (pipo[i].x > 4000 || pipo[i].x < -1000) {
			//		meio.removeChild( pipo[i] );
			//		pipo.splice( i, 1 );
			//	}
			}
			for (var e:int = 0; e < platafo.length; e++) {
					if (colision(tiro, platafo[e])) {
						tiro.x = -1500;
						tiro.y = -800;
						vetor = 0;
					}
				}
	
		}
		public function matacarai():void {
			
			
			for (var i:int = 0; i < ruim.length; i++) {
				if (colision(ruim[i].hitbox(), hitH)) {
					if (ruim[i].tipo == "soldado" || ruim[i].tipo == "atira" || ruim[i].tipo == "berserk" ) pain.play();
					if (ruim[i].tipo == "tigre") tigdan.play();
					if (ruim[i].tipo == "touro") tordano.play();
					if (ruim[i].tipo == "passaro") pasdano.play();
					if (ruim[i].tipo == "shaman") risada.play();
					if(hitH.y > Player.y){
					ruim[i].vida -= 2;
					}else {
					ruim[i].vida -= 1;	
					}
					hitV.x = -1500;
					hitV.y = -800;
					hitH.x = -1500;
					hitH.y = -800;
				
					sangra(ruim[i].x, ruim[i].y+ruim[i].height/2,(ruim[i].height + ruim[i].width)/15, ruim[i].height + ruim[i].width); 
				
					ruim[i].filter = ruim[i].filterRed;
					ruim[i].filter = ruim[i].filterRed.tint(0xFF0000, (ruim[i].verm += 0.3));
					if (ruim[i].vida <= 0) {
					sangra(ruim[i].x, ruim[i].y+ruim[i].height/2,(ruim[i].height + ruim[i].width)/15, ruim[i].height + ruim[i].width*7);
					meio.removeChild( ruim[i] );
					ruim.splice( i, 1 );
					if (ruim[i].tipo == "tigre") tigdie.play();
					else if (ruim[i].tipo == "touro") tordie.play();
					if (ruim[i].tipo == "soldado" || ruim[i].tipo == "atira") {
					morte.play();
					}else {
					//morte.play();	
					}
					}
				}
				if (colision(ruim[i].hitbox(), hitV)) {
					if (ruim[i].tipo == "soldado" || ruim[i].tipo == "atira" || ruim[i].tipo == "berserk" ) pain.play();
					if (ruim[i].tipo == "tigre") tigdan.play();
					if (ruim[i].tipo == "touro") tordano.play();
					if (ruim[i].tipo == "passaro") pasdano.play();
					if (ruim[i].tipo == "shaman") risada.play();
					ruim[i].vida -= 1;
					hitV.x = -1500;
					hitV.y = -800;
					hitH.x = -1500;
					hitH.y = -800;
				
					sangra(ruim[i].x, ruim[i].y+ruim[i].height/2,(ruim[i].height + ruim[i].width)/15, ruim[i].height + ruim[i].width); 
				
					ruim[i].filter = ruim[i].filterRed;
					ruim[i].filter = ruim[i].filterRed.tint(0xFF0000, (ruim[i].verm += 0.3));
					if (ruim[i].vida <= 0) {
					sangra(ruim[i].x, ruim[i].y+ruim[i].height/2,(ruim[i].height + ruim[i].width)/15, ruim[i].height + ruim[i].width*7);
					meio.removeChild( ruim[i] );
					ruim.splice( i, 1 );
					if (ruim[i].tipo == "tigre") tigdie.play();
					else if (ruim[i].tipo == "touro") tordie.play();
					if (ruim[i].tipo == "soldado" || ruim[i].tipo == "atira") {
					morte.play();
					}else {
					//morte.play();	
					}
					}
				}
				if (colision(ruim[i].hitbox(), tiro)) {
					if (ruim[i].tipo == "soldado" || ruim[i].tipo == "atira" || ruim[i].tipo == "berserk" ) pain.play();
					if (ruim[i].tipo == "tigre") tigdan.play();
					if (ruim[i].tipo == "touro") tordano.play();
					if (ruim[i].tipo == "passaro") pasdano.play();
					if (ruim[i].tipo == "shaman") risada.play();
					tiro.x = -1500;
					tiro.y = -800;
					vetor = 0;
				
					sangra(ruim[i].x, ruim[i].y+ruim[i].height/2,(ruim[i].height + ruim[i].width)/15, ruim[i].height + ruim[i].width); 
					 
					ruim[i].vida -= 4;
					ruim[i].filter = ruim[i].filterRed;
					ruim[i].filter = ruim[i].filterRed.tint(0xFF0000, (ruim[i].verm += 0.3));
					if (ruim[i].vida <= 0) {
					sangra(ruim[i].x, ruim[i].y+ruim[i].height/2,(ruim[i].height + ruim[i].width)/15, ruim[i].height + ruim[i].width*7);	
					meio.removeChild( ruim[i] );
					ruim.splice( i, 1 );
					if (ruim[i].tipo == "tigre") tigdie.play();
					else if (ruim[i].tipo == "touro") tordie.play();
					if (ruim[i].tipo == "soldado" || ruim[i].tipo == "atira") {
					morte.play();
					}else {
					//morte.play();	
					}
					}
				}
			}
		}
	
		//atualizar jogador
		public function updatePlayer():void
		{
			
			Player.velocidadeX = 0;
			Player.velocidadeY += 2;
			Player.x = 340;
			//Player.y = 300;
			if (move){
				if (Player.estado == "chao" && Player.end)
				{
					if (tipoat == 5) {
					Player.stun();	
					}
					else if (leftKeyDown || rightKeyDown && Player.end && !zKeyDown && !xKeyDown && tipoat == 0 && !(leftKeyDown && rightKeyDown)) {
					Player.anda();
					if(!IZ)canal = andar.play(0, int.MAX_VALUE);
					IZ = true;
					}
					if (leftKeyDown && rightKeyDown && Player.end && !zKeyDown && !xKeyDown && tipoat == 0) {
					Player.para();
					Player.pisc();
					if (IZ) {
					canal.stop(); 
					IZ = false;
					}
					}
					else if (!leftKeyDown && !rightKeyDown && !zKeyDown && !xKeyDown && tipoat == 0){
					Player.para();
					Player.pisc();
					//Player.anim = 0;
					if (IZ) {
					canal.stop(); 
					IZ = false;
					}
					}
					if (upKeyDown && Player.estado != "defensa")
					{
					
						Player.velocidadeY -= 32;
						pulo.play();
					}
					if (leftKeyDown) Player.velocidadeX -= 10;
					if (rightKeyDown) Player.velocidadeX += 10;
					atac();
					defesa();
				}
				else
				{
					if (Player.estado == "ar" && Player.end)
					
					{
						if(!xKeyDown && tipoat == 0) Player.pulo();
						if (leftKeyDown) Player.velocidadeX -= 10;
						if (rightKeyDown) Player.velocidadeX += 10;
						if (downKeyDown) Player.velocidadeY += 2;
						atac();
						defesa();
					}
				}
			}
			if (Player.estado != "chao" && IZ) {
					canal.stop(); 
					IZ = false;
			}
	       // if(Player.end) Player.anim = 0;
			if (Player.estado == "chao")
			{
				Player.estado = "ar";
			}
				
			tiro.x += vetor;
			Player.x += Player.velocidadeX*0.000001;
			colisoesX();
			Player.y += Player.velocidadeY*0.000001;
			colisoesY();

		}
		private function debug():void {
		barraV.width = vida*1.67;
		barraD.width = escudi * 33 * 1.65;
		if (vida >= 85) {
		canva.fundo3.alpha = 1;canva.fundo4.alpha = 0;
		canva.fundo5.alpha = 0;canva.fundo6.alpha = 0;
		canva.fundo7.alpha = 0;canva.fundo8.alpha = 0;
		}else if (vida < 85 && vida >= 68) {
		canva.fundo3.alpha = 0;canva.fundo4.alpha = 1;
		canva.fundo5.alpha = 0;canva.fundo6.alpha = 0;
		canva.fundo7.alpha = 0;canva.fundo8.alpha = 0;
		}else if (vida < 68 && vida >= 51) {
		canva.fundo3.alpha = 0;canva.fundo4.alpha = 0;
		canva.fundo5.alpha = 1;canva.fundo6.alpha = 0;
		canva.fundo7.alpha = 0;canva.fundo8.alpha = 0;
		}else if (vida < 51 && vida >= 34) {
		canva.fundo3.alpha = 0;canva.fundo4.alpha = 0;
		canva.fundo5.alpha = 0;canva.fundo6.alpha = 1;
		canva.fundo7.alpha = 0;canva.fundo8.alpha = 0;
		}else if (vida < 34 && vida >= 17) {
		canva.fundo3.alpha = 0;canva.fundo4.alpha = 0;
		canva.fundo5.alpha = 0;canva.fundo6.alpha = 0;
		canva.fundo7.alpha = 1;canva.fundo8.alpha = 0;
		}else if (vida < 17) {
		canva.fundo3.alpha = 0;canva.fundo4.alpha = 0;
		canva.fundo5.alpha = 0;canva.fundo6.alpha = 0;
		canva.fundo7.alpha = 0;canva.fundo8.alpha = 1;
		}
		if (colision(Player.hitbox(), vitoria)) {
			var tela:Lev3;
			tela = new Lev3();
			parent.addChild(tela);
			
			removeEventListeners();
			removeFromParent(true);
			}	
		}
		public function turn():void {
		if (dire && move) {
		Player.scaleX = 1;
		Player.end = true;
		}	
		if (!dire && move ) {
		Player.scaleX = -1;
		Player.end = true;
		}	
		}
		
		public function atatip():void {
		if (tipoat == 1 && Player.end) {
		//Player.anim = 0;
		Player.ataca();
		if (Player.anim == 0) tipoat = 0;
		}	
		if (tipoat == 2 && Player.end) {
		//Player.anim = 0;
		Player.atacaup();
		if (Player.anim == 0) tipoat = 0;
		}	
		if (tipoat == 3 && Player.end) {
		//Player.anim = 0;
		Player.atacadown();
		if (Player.anim == 0) tipoat = 0;
		}
		if (tipoat == 4 && Player.end) {
		//Player.anim = 0;
		Player.hurt();
		if (Player.anim == 0) tipoat = 0;
		}
		if (tipoat == 5 && stun > 30 && Player.end) {
		//Player.anim = 0;
		Player.stun();
		if (Player.anim == 0) tipoat = 0;
		}
		}
	}
}

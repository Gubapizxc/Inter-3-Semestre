package 
{
	import starling.display.Sprite;
	import flash.utils.Dictionary;
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.textures.TextureAtlas;
	/**
	 * ...
	 * @author zzzzzzzzzz
	 */
	public class Animacao extends Sprite
	{
		/////samuel é um boco cheio da grana
		private var atlas:TextureAtlas;
		private var movieclips:Dictionary;    //Em Dictionary qualquer coisa pode ser usado como indice, ao inves de [0], pode-se usar "text"
		private var framerate:int;
		private var atual:String;
		
		public function Animacao(imagem:Class, xml:Class, fps:int) 
		{
			atlas = Assets.atlas(imagem, xml);
			movieclips = new Dictionary();
			framerate = fps;
		}
		public function mostrar(nova:String, loop:Boolean = true):void   //nesse caso, por padrão a variavel loop sera true
		{
			if (nova != atual) {
				
				//Existe uma animação atual no dictionary?
				if (movieclips[atual]) {
					movieclips[atual].visible = false;
					Starling.juggler.remove(movieclips[atual])    //troca o frame das img (starling.core.Starling) - pra ficar azul
					
				}
				//Se não existir a animação nova no Dictionary
				if (!movieclips[nova]) {
					movieclips[nova] = new MovieClip(atlas.getTextures(nova), framerate)
					addChild(movieclips[nova]);
				}
				movieclips[nova].visible = true;
				Starling.juggler.add(movieclips[nova]);
				
				//inicia do primeiro frame
				movieclips[nova].loop = loop;
				movieclips[nova].stop();
				movieclips[nova].play();
				
				atual = nova;
			}

		}
		
		public function movieClip():MovieClip
		{
			return movieclips[atual];
		}
	}

}/////samuel é um boco cheio da grana
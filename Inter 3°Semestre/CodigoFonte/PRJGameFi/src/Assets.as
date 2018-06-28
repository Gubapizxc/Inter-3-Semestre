package 
{
	import flash.display.Bitmap;
	import starling.display.Image;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	import flash.media.Sound;
	import starling.extensions.PDParticleSystem ;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author sjksdjfjdrjwe
	 */
	public class Assets 
	{
		/*[Embed(source = "../assets/inicio.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const inicio:Class; 
		
		[Embed(source = "../assets/Lev1over.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const Lev1over:Class; 
		
		[Embed(source = "../assets/gude.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const gude:Class; 
		
		[Embed(source = "../assets/vito.jpg")]    // Adiciona a imagem no arquivo swf, " .. " significa "voltar um caminho" (uma pasta)
		public static const vito:Class; 
		
		[Embed(source = "../assets/zero.png")]
		public static const ZeroPng:Class;
		
		[Embed(source = "../assets/pers.png")]
		public static const pers:Class;
		
		[Embed(source = "../assets/pers2.png")]
		public static const pers2:Class;
		
		[Embed(source = "../assets/pers3.png")]
		public static const pers3:Class;
		
		[Embed(source = "../assets/persup.png")]
		public static const persup:Class;
		
		[Embed(source = "../assets/persdown.png")]
		public static const persdown:Class;
		
		[Embed(source = "../assets/perside.png")]
		public static const perside:Class;
		
		[Embed(source = "../assets/neg.png")]
		public static const neg:Class;
		
		[Embed(source = "../assets/cel.png")]
		public static const cel:Class;
		
		[Embed(source = "../assets/spear.png")]
		public static const spear:Class;
		
		[Embed(source = "../assets/boss.png")]
		public static const boss:Class;
		
		[Embed(source = "../assets/pow.png")]
		public static const pow:Class;
		
		[Embed(source = "../assets/mip.png")]
		public static const mip:Class;
		
		[Embed(source = "../assets/instru.jpg")]
		public static const instru:Class;*/
		[Embed(source = "../assets/gameover.png")]
		public static const gameover:Class;
		[Embed(source = "../assets/butretry.png")]
		public static const butretry:Class;
		[Embed(source = "../assets/butmenu.png")]
		public static const butmenu:Class;
		
		[Embed(source = "../assets/teste.png")]
		public static const teste:Class;
		[Embed(source = "../assets/teste2.png")]
		public static const teste2:Class;
		[Embed(source = "../assets/cobrir.png")]
		public static const cobrir:Class;
		[Embed(source = "../assets/emenda.png")]
		public static const emenda:Class;
		
		[Embed(source = "../assets/levelzoo1.png")]
		public static const levelzoo1:Class;
		[Embed(source = "../assets/levelzoo2.png")]
		public static const levelzoo2:Class;
		[Embed(source = "../assets/zoofundo1.png")]
		public static const zoofundo1:Class;
		[Embed(source = "../assets/zoofundo2.png")]
		public static const zoofundo2:Class;
		[Embed(source = "../assets/zoomeio1.png")]
		public static const zoomeio1:Class;
		[Embed(source = "../assets/zoomeio2.png")]
		public static const zoomeio2:Class;
		[Embed(source = "../assets/milita.png")]
		public static const milita:Class;
		
		[Embed(source = "../assets/q11.png")]
		public static const q11:Class;
		[Embed(source = "../assets/q12.png")]
		public static const q12:Class;
		
		[Embed(source = "../assets/q21.png")]
		public static const q21:Class;
		[Embed(source = "../assets/q22.png")]
		public static const q22:Class;
		
		[Embed(source = "../assets/tor1.png")]
		public static const tor1:Class;
		[Embed(source = "../assets/tor2.png")]
		public static const tor2:Class;
		[Embed(source = "../assets/tor3.png")]
		public static const tor3:Class;
		[Embed(source = "../assets/tor4.png")]
		public static const tor4:Class;
		
		[Embed(source = "../assets/tig1.png")]
		public static const tig1:Class;
		[Embed(source = "../assets/tig2.png")]
		public static const tig2:Class;
		
		[Embed(source = "../assets/x1.png")]
		public static const x1:Class;
		[Embed(source = "../assets/x2.png")]
		public static const x2:Class;
		
		[Embed(source = "../assets/pas1.png")]
		public static const pas1:Class;
		[Embed(source = "../assets/pas2.png")]
		public static const pas2:Class;
		[Embed(source = "../assets/pas3.png")]
		public static const pas3:Class;
		
		[Embed(source = "../assets/ber1.png")]
		public static const ber1:Class;
		[Embed(source = "../assets/ber2.png")]
		public static const ber2:Class;
		[Embed(source = "../assets/ber3.png")]
		public static const ber3:Class;
		[Embed(source = "../assets/ber4.png")]
		public static const ber4:Class;
		[Embed(source = "../assets/berpar.png")]
		public static const berpar:Class;

		
		[Embed(source = "../assets/per/parado.png")]
		public static const parado:Class;
		[Embed(source = "../assets/per/p1.png")]
		public static const p1:Class;
		[Embed(source = "../assets/per/p2.png")]
		public static const p2:Class;
		[Embed(source = "../assets/per/pis1.png")]
		public static const pis1:Class;
		[Embed(source = "../assets/per/pis2.png")]
		public static const pis2:Class;
		
		[Embed(source = "../assets/per/vidbar.png")]
		public static const vidbar:Class;
		[Embed(source = "../assets/per/defbar.png")]
		public static const defbar:Class;
		[Embed(source = "../assets/per/canva.png")]
		public static const canva:Class;
		[Embed(source = "../assets/per/canva2.png")]
		public static const canva2:Class;
		[Embed(source = "../assets/per/canva3.png")]
		public static const canva3:Class;
		[Embed(source = "../assets/per/canva4.png")]
		public static const canva4:Class;
		[Embed(source = "../assets/per/canva5.png")]
		public static const canva5:Class;
		[Embed(source = "../assets/per/canva6.png")]
		public static const canva6:Class;
		
		[Embed(source = "../assets/texture.png")]
		public static const blood:Class;
		[Embed(source = "../assets/particle.pex", mimeType = "application/octet-stream")]
		public static const bloodpex:Class;
		
		[Embed(source = "../assets/butplay.png")]
		public static const butplay:Class;
		[Embed(source = "../assets/butinst.png")]
		public static const butinst:Class;
		[Embed(source = "../assets/butback.png")]
		public static const butback:Class;
		[Embed(source = "../assets/butnext.png")]
		public static const butnext:Class;
		[Embed(source = "../assets/butskip.png")]
		public static const butskip:Class;
		[Embed(source = "../assets/butbackmin.png")]
		public static const butbackmin:Class;
		[Embed(source = "../assets/butnormal.png")]
		public static const butnormal:Class;
		[Embed(source = "../assets/buthard.png")]
		public static const buthard:Class;
		[Embed(source = "../assets/butkamikaze.png")]
		public static const butkamikaze:Class;
		
		[Embed(source = "../assets/cut1.png")]
		public static const cut1:Class;
		[Embed(source = "../assets/cut2.png")]
		public static const cut2:Class;
		[Embed(source = "../assets/cut3.png")]
		public static const cut3:Class;
		[Embed(source = "../assets/cut4.png")]
		public static const cut4:Class;
		[Embed(source = "../assets/cut5.png")]
		public static const cut5:Class;
		[Embed(source = "../assets/cut6.png")]
		public static const cut6:Class;
		[Embed(source = "../assets/cutfim1.png")]
		public static const cutfim1:Class;
		[Embed(source = "../assets/cutfim2.png")]
		public static const cutfim2:Class;
		[Embed(source = "../assets/cutfim3.png")]
		public static const cutfim3:Class;
		
		[Embed(source = "../assets/tut1.png")]
		public static const tut1:Class;
		[Embed(source = "../assets/tut2.png")]
		public static const tut2:Class;
		[Embed(source = "../assets/tut3.png")]
		public static const tut3:Class;
		[Embed(source = "../assets/tut4.png")]
		public static const tut4:Class;
		
		[Embed(source = "../assets/bala.png")]
		public static const bala:Class;
		
		[Embed(source = "../assets/tirao.png")]
		public static const tirao:Class;
		
		[Embed(source = "../assets/cam11.png")]
		public static const cam11:Class;
		
		[Embed(source = "../assets/cam12.png")]
		public static const cam12:Class;
		
		[Embed(source = "../assets/cam21.png")]
		public static const cam21:Class;
		
		[Embed(source = "../assets/cam22.png")]
		public static const cam22:Class;
		
		[Embed(source = "../assets/cam31.png")]
		public static const cam31:Class;
		
		[Embed(source = "../assets/cam32.png")]
		public static const cam32:Class;
		
		[Embed(source = "../assets/fim.png")]
		public static const fim:Class;
		
		[Embed(source = "../assets/e1.png")]
		public static const e1:Class;
		[Embed(source = "../assets/e2.png")]
		public static const e2:Class;
		[Embed(source = "../assets/ent.png")]
		public static const ent:Class;
		
		[Embed(source = "../assets/le1.png")]
		public static const le1:Class;
		[Embed(source = "../assets/le2.png")]
		public static const le2:Class;
		[Embed(source = "../assets/le15.png")]
		public static const le15:Class;
		[Embed(source = "../assets/ext.png")]
		public static const ext:Class;
		
		[Embed(source = "../assets/inicio.png")]
		public static const inicio:Class;
		
		[Embed(source = "../assets/per/w1.png")]
		public static const w1:Class;	
		[Embed(source = "../assets/per/w2r.png")]
		public static const w2r:Class;		
		[Embed(source = "../assets/per/w3.png")]
		public static const w3:Class;
		[Embed(source = "../assets/per/w4.png")]
		public static const w4:Class;	
		[Embed(source = "../assets/per/w5.png")]
		public static const w5:Class;		
		[Embed(source = "../assets/per/w6.png")]
		public static const w6:Class;
		
		[Embed(source = "../assets/per/atu.png")]
		public static const atu:Class;	
		[Embed(source = "../assets/per/atu2.png")]
		public static const atu1:Class;	
		[Embed(source = "../assets/per/atu3.png")]
		public static const atu2:Class;	
		[Embed(source = "../assets/per/atu4.png")]
		public static const atu3:Class;	
		
		[Embed(source = "../assets/per/at1.png")]
		public static const at1:Class;		
		[Embed(source = "../assets/per/at2.png")]
		public static const at2:Class;
		[Embed(source = "../assets/per/at3.png")]
		public static const at3:Class;	
		[Embed(source = "../assets/per/at4.png")]
		public static const at4:Class;
		
		[Embed(source = "../assets/per/atd3.png")]
		public static const atd3:Class;
		[Embed(source = "../assets/per/atd2.png")]
		public static const atd2:Class;
		[Embed(source = "../assets/per/atd1.png")]
		public static const atd1:Class;
		[Embed(source = "../assets/per/atd.png")]
		public static const atd:Class;
		
		[Embed(source = "../assets/per/h1.png")]
		public static const h1:Class;	
		[Embed(source = "../assets/per/h2.png")]
		public static const h2:Class;		
		[Embed(source = "../assets/per/h3.png")]
		public static const h3:Class;

		[Embed(source = "../assets/per/s1.png")]
		public static const s1:Class;	
		[Embed(source = "../assets/per/s2.png")]
		public static const s2:Class;		
		[Embed(source = "../assets/per/s3.png")]
		public static const s3:Class;
		[Embed(source = "../assets/per/s4.png")]
		public static const s4:Class;	

		[Embed(source = "../assets/per/tiro.png")]
		public static const tiro:Class;
		
		[Embed(source = "../assets/per/def.png")]
		public static const def:Class;	
		
		[Embed(source = "../assets/per/jump.png")]
		public static const jump:Class;

		[Embed(source = "../assets/tutorial.png")]
		public static const tutor:Class;
		
		private static var texturas:Dictionary = new Dictionary();
		
		/////samuel é um boco cheio da grana
		/*public static function imagem(arquivo:Class):Image //adiciona todas as imagens
		{
			var bmp:Bitmap = new arquivo();
			var tex:Texture = Texture.fromBitmap(bmp);
			var img:Image = new Image(tex);
			img.smoothing = "none";    //tira a suavização da imagem, pra fazer pixel art
			return img;
		}
		*/
		public static function imagem(arquivo:Class):Image
		{
			if (!texturas[arquivo]) {
				texturas[arquivo] = Texture.fromEmbeddedAsset(arquivo);
			}
			var img:Image = new Image(texturas[arquivo]);
			img.smoothing = "none";
			return img;
		}
		/*public static function textu(arquivo:Class):Texture //adiciona todas as imagens
		{
			var bmp:Bitmap = new arquivo();
			var tex:Texture = Texture.fromBitmap(bmp);
			//var img:Image = new Image(tex);
			//tex.smoothing = "none";    //tira a suavização da imagem, pra fazer pixel art
			return tex;
		}*/
		
		public static function textu(arquivo:Class):Texture
		{
			if (!texturas[arquivo]) {
				texturas[arquivo] = Texture.fromEmbeddedAsset(arquivo);
			}
			return texturas[arquivo];
		}
		
		public static function particula(arquivo:Class, arqPex:Class):PDParticleSystem
		{
			if (!texturas[arquivo]) {
				texturas[arquivo] = Texture.fromEmbeddedAsset(arquivo);
			}
			var pex:XML = XML(new arqPex());
			var ps:PDParticleSystem = new PDParticleSystem(pex, texturas[arquivo]);
			return ps;
		}
		/*public static function atlas(arquivo:Class , arqxml:Class):TextureAtlas
		{
			var tex:Texture = Texture.fromEmbeddedAsset(arquivo)
			var xml:XML = XML(new arqxml());
			var ta:TextureAtlas = new TextureAtlas(tex, xml); 
			return ta;
		}*/
		
	}

}

package 
{
   	import starling.display.Quad;
    import starling.display.Sprite;
    import starling.text.TextField;
	import starling.events.KeyboardEvent;

	/**
	 * ...
	 * @author 
	 */
	public class Bloqui extends Sprite
	{
		public var tipo:int;
		
		public function Bloqui(lar:int,alt:int,cor:int) 
		{
			var bloc:Quad;
			bloc = new Quad(lar, alt, cor)
			addChild(bloc);
		}
		
	}

}

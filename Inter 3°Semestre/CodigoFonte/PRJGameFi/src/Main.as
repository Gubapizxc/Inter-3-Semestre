package 
{
	    import flash.display.Sprite;
        import starling.core.Starling;
  
	
	[SWF(width="720", height="480", frameRate="30", backgroundColor="#7f7f7f")]
    public class Main extends Sprite
	{
		private var _starling:Starling;
		
		public function Main():void
		{
               trace("FUNFA");
			   _starling = new Starling(Inicio, stage);
               _starling.start();
		}
	}
}

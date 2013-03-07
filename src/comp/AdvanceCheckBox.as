package comp
{
	import flash.events.MouseEvent;
	
	import mx.controls.CheckBox;
	import mx.states.OverrideBase;
	
	public class AdvanceCheckBox extends CheckBox
	{
		public var cbData:Object;
		public function AdvanceCheckBox()
		{
			super();
			this.buttonMode = true;
			this.toolTip = "press [space] to select";
		}
		override protected function rollOverHandler(event:MouseEvent):void
		{
			super.rollOverHandler(event);
			this.setFocus();
		}
	}
}
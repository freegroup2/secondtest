package vo
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import flashx.textLayout.elements.BreakElement;
	
	import mx.formatters.DateFormatter;
	import mx.formatters.Formatter;
	
	public class ClassObject2 extends EventDispatcher
	{
		static public var httpUrl:String;
		private var _title:String;
		private var _area:String;
		private var _startDate:Date;
		private var _endDate:Date;
		private var _link:String;
		
		public function ClassObject2(ar:int,tl:String,sd:String,ed:String,lk:String)
		{
			switch(ar)
			{
				case (1):
				{
					this._area = "台中";	
					break;
				}
				case (2):
				{
					this._area = "高雄";
					break;
				}
				default:
				{
					this._area = "台北";
					break;
				}
			}
			this._title = tl;
			this._startDate = new Date(sd);
			this._endDate = new Date(ed);
			this._link = lk;
		}
		[Bindable(event = "titleChage")]
		public function get title():String
		{
			var result:String = "[" + this._area + "]";
			result = result.concat(this._title);
			return result;
		}		
		[Bindable(event = "timeChange")]
		public function get time():String
		{
			var formatter:DataFormatter = new DateFormatter();
			formatter.formatString = "YYYY/MM/DD"
			var result:String = formatter.format
			result = result.concat("~" + formatter.format
			return result;
		}
		[Bindable(event = "linkChange")]
		public function get link():String
		{
		}
	}
}

















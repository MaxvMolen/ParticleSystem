package {

	import flash.display.MovieClip;
	import flash.events.*;

	public class ParticalSystem extends MovieClip {

		public var pa: Array = new Array();

		public function ParticalSystem() {

			pa[i] = [];
			for (var i: Number = 0; i < 10; i++) {
				var p: Particle = Particle(pa[i]);
				pa[i] = new Particle();
				this.addChild(pa[i]);
				if (Particle(pa[i]).isDead()) {
					pa.splice(i);
				}
			}

			addEventListener(Event.ENTER_FRAME, Update);
		}


		public function Update(e: Event) {

		}
	}
}
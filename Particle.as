package {

	import flash.display.MovieClip;
	import flash.events.*;

	public class Particle extends MovieClip {

		var position;
		var velocity;
		var acceleration;
		var timer: Number;
		var lifespan;

		public function Particle() {
			this.alpha = 0.50;

			this.acceleration = new Vector2(0, 0.05);
			this.velocity = new Vector2((Math.random() * -1.0), (Math.random() * -2.0 + Math.random() * 0.0)); 
			this.position = new Vector2(275, 5);
			lifespan = 40;
			
			
			addEventListener(Event.ENTER_FRAME, Update);
		}

		public function Update(e: Event) {
			trace(lifespan);
			trace(isDead());
			isDead()
			this.velocity.add(acceleration);
			this.position.add(velocity);
			lifespan--;
			this.x = position.x;
			this.y = position.y;

		}
		
		public function isDead():Boolean{
			if (lifespan < 0,0) {
				return true;
			} else {
				return false;
			}
		}
		
	}

}
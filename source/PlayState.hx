package;

import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
	var curSong:String;

	override public function create()
	{
		super.create();

		curSong = 'mrdearest';

		FlxG.sound.playMusic(Paths.getSong(curSong));

	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

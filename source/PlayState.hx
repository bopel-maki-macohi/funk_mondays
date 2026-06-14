package;

import flixel.addons.sound.FlxRhythmConductorUtil;
import flixel.FlxG;
import flixel.FlxState;

class PlayState extends MusicState
{
	var curSong:String;

	override public function create()
	{
		super.create();

		curSong = 'mrdearest';

		resetConductor();

		FlxG.sound.playMusic(Paths.getSong(curSong));
		conductor.setupTimeChanges(FlxRhythmConductorUtil.parseTimeChanges([
			{
				t: 0,
				bpm: 120.0,
			},
		]));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

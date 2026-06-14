package;

import lime.utils.Assets;
import haxe.Json;
import flixel.addons.sound.FlxRhythmConductorUtil;
import flixel.FlxG;
import flixel.FlxState;

class PlayState extends MusicState
{
	var song:Song;
	var curSong:String;

	override public function create()
	{
		super.create();

		curSong = 'mrdearest';
		song = Json.parse(Assets.getText(Paths.getSongData(curSong)));

		resetConductor();

		FlxG.sound.playMusic(Paths.getSongTrack(curSong));
		conductor.setupTimeChanges(FlxRhythmConductorUtil.parseTimeChanges(song.timeChanges));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

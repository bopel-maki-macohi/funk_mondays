import flixel.addons.sound.MusicTimeChangeEvent.MusicTimeChangeData;

typedef Song =
{
	var timeChanges:Array<MusicTimeChangeData>;
	var notes:Array<SongNote>;
}

typedef SongNote =
{
	var time:Float;
	var direction:Int;
}

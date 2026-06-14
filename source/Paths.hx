class Paths
{
	public static function getPath(path:String):String
		return 'assets/$path';

	public static function getSongData(song:String):String
		return getPath('songs/${song.toLowerCase()}/song.json');

	public static function getSongTrack(song:String):String
		return getPath('songs/${song.toLowerCase()}/song.ogg');
}

class Paths
{
	public static function getPath(path:String):String
		return 'assets/$path';

	public static function getSong(song:String):String
		return getPath('songs/${song.toLowerCase()}/song.ogg');
}

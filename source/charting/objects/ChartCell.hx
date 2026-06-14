package charting.objects;

import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import flixel.FlxSprite;

class ChartCell extends FlxSprite
{
	public static final CELL_SIZE = 48;

	override public function new(?x:Float = 0, ?y:Float = 0)
	{
		super(x, y);

		makeGraphic(CELL_SIZE, CELL_SIZE, FlxColor.TRANSPARENT);

		final cellBit = CELL_SIZE / 2;

		final color1:FlxColor = 0xB0B0B0;
		final color2:FlxColor = 0x707070;

		FlxSpriteUtil.drawRect(this, 0, 0, cellBit, cellBit, FlxColor.fromString(color1.toWebString()));
		FlxSpriteUtil.drawRect(this, cellBit, 0, cellBit, cellBit, FlxColor.fromString(color2.toWebString()));
		FlxSpriteUtil.drawRect(this, cellBit, cellBit, cellBit, cellBit, FlxColor.fromString(color1.toWebString()));
		FlxSpriteUtil.drawRect(this, 0, cellBit, cellBit, cellBit, FlxColor.fromString(color2.toWebString()));
	}
}

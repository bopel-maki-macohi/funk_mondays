package charting;

import flixel.FlxG;
import flixel.FlxObject;
import flixel.group.FlxSpriteGroup;
import charting.objects.ChartCell;

class Charter extends MusicState
{
	var cells:FlxTypedSpriteGroup<ChartCell>;

	var camFollow:FlxObject;

	override function create()
	{
		super.create();

		camFollow = new FlxObject(FlxG.width / 2, FlxG.height / 2);
		add(camFollow);

		// FlxG.camera.follow(camFollow, LOCKON, 0.04);
		// FlxG.camera.focusOn(camFollow.getPosition());

		cells = new FlxTypedSpriteGroup<ChartCell>();
		add(cells);

		for (y in 0...12)
		{
			for (x in 0...4)
			{
				var cell = new ChartCell(x * ChartCell.CELL_SIZE, y * ChartCell.CELL_SIZE);
				cells.add(cell);
			}
		}

        cells.screenCenter();
	}
}

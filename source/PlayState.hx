package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import haxe.ui.Toolkit;
import ui.MainMenu;

class PlayState extends FlxState
{
	override public function create()
	{
		super.create();

		bgColor = FlxColor.GRAY;
		// this.bgColor = FlxColor.GRAY;

		Toolkit.init({container: this}); // "this" FlxState, or whatever else "this" is referring to (has to extend FlxGroup)

		var menu = new MainMenu(() ->
		{
			trace("newGame");
		}, () ->
			{
				trace("loadGame");
			});

		menu.x = 0;
		menu.y = 0;
		menu.width = FlxG.width;
		menu.height = FlxG.height;
		add(menu);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}

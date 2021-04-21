package ui;

import haxe.ui.containers.Box;

@:build(haxe.ui.macros.ComponentMacros.build("assets/xml/main_menu.xml"))
class MainMenu extends Box
{
	private var _onNewGameClicked:Void->Void;

	public function new(onNewGameClicked:Void->Void, onLoadGameClicked:Void->Void)
	{
		super();

		width = 100;

		_onNewGameClicked = onNewGameClicked;

		newGameBtn.onClick = _ ->
		{
			if (onNewGameClicked != null)
				onNewGameClicked();
		}
		loadGameBtn.onClick = _ ->
		{
			if (onLoadGameClicked != null)
				onLoadGameClicked();
		}
	}
}

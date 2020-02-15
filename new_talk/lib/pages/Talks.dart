import "package:flutter/material.dart";
import "package:new_talk/constants.dart";

class Talks extends StatelessWidget {

	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: COLORS["WHITE"],
				title: Text("New Talk",
					style: TextStyle(
						color: COLORS["DARK"],
						fontFamily: FONTS["NUNITO_SEMI"],
						fontStyle: FontStyle.italic,
						fontSize: 20
					)
				),
				iconTheme: IconThemeData(color: COLORS["DARK"]),
				actionsIconTheme: IconThemeData(color: COLORS["DARK"]),
				actions: <Widget>[
					IconButton(
						icon: ImageIcon(AssetImage("assets/images/photo-camera.png")),
						onPressed: () => {},
					)
				],
			),
			drawer: Container(),
		);
	}
}
import "package:flutter/material.dart";
import "package:new_talk/constants.dart";
import "package:new_talk/utils.dart";

class CreatePost extends StatelessWidget {

	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				backgroundColor: COLORS["WHITE"],
				leading: IconButton(
					icon: ImageIcon(AssetImage("assets/images/left-arrow.png")),
					onPressed: () => navigateBack(context),
				),
				title: Text("Create Post",
					style: TextStyle(
						color: COLORS["DARK"],
						fontFamily: FONTS["NUNITO_SEMI"],
						fontStyle: FontStyle.italic,
						fontSize: 20
					)
				),
				iconTheme: IconThemeData(color: COLORS["DARK"])
			),
		);
	}

}
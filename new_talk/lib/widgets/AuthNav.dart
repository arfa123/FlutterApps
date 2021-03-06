import "package:flutter/material.dart";
import 'package:flutter/gestures.dart';
import "package:new_talk/constants.dart";

typedef OnPress();

class AuthNav extends StatelessWidget {
	String title;
	OnPress onPress;

	AuthNav({this.title, this.onPress});

	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(top: 23),
			width: double.infinity,
			child: FlatButton(
				onPressed: onPress,
				padding: EdgeInsets.all(0),
				child: RichText(
					text: TextSpan(
						text: "Dont have an account ? ",
						style: TextStyle(
							fontSize: 15,
							fontFamily: FONTS["NUNITO_REG"],
							color: COLORS["LIGHT_DARK"]
						),
						children: [
							TextSpan(
								text: title,
								style: TextStyle(fontFamily: FONTS["NUNITO_SEMI"], color: COLORS["DARK2"])
							)
						]
					)
				),
			)
		);
	}

}
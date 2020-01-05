import "package:flutter/material.dart";
import "package:new_talk/constants.dart";

class SubmitButton extends StatelessWidget {
	String title;

	SubmitButton({this.title});

	Widget build(BuildContext context) {
		return RaisedButton(
			onPressed: () {},
			color: Color(0xFF3D3D3D),
			padding: EdgeInsets.symmetric(vertical: 11),
			child: Text(title, style: TextStyle(fontSize: 21, fontFamily: FONTS["NUNITO_SEMI"], color: COLORS["WHITE"])),
			shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
		);
	}
}
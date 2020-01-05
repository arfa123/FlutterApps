import "package:flutter/material.dart";
import "package:new_talk/constants.dart";

class SocialButton extends StatelessWidget {
	String image;
	EdgeInsets margin;

	SocialButton({this.image, this.margin});

	Widget build(BuildContext context) {
		return Container(
			height: 47,
			margin: margin,
			decoration: BoxDecoration(
				border: Border.all(width: 1, color: COLORS["LIGHT_DARK"]),
				borderRadius: BorderRadius.all(Radius.circular(6))
			),
			child: InkWell(
				onTap: () {},
				child: Center(
					child: Image.asset(image),
				),
			),
		);
	}
}
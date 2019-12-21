import "package:flutter/material.dart";

class AvatarImage extends StatelessWidget {

	String avatar;
	AvatarImage(this.avatar);

	Widget build(BuildContext context) {
		return Container(
			width: 112,
			height: 136,
			margin: EdgeInsets.symmetric(horizontal: 3.5),
			decoration: BoxDecoration(
				image: DecorationImage(
					fit: BoxFit.cover,
					image: AssetImage(avatar),
				),
				borderRadius: BorderRadius.all(Radius.circular(15)),
				color: Colors.black
			),
			child: Column(
				mainAxisAlignment: MainAxisAlignment.end,
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Padding(
						padding: EdgeInsets.only(left: 7, bottom: 10),
						child: Text("Muhammad Usama", style: TextStyle(fontSize: 10, fontFamily: "OpenSans-Regular", color: Colors.white))
					)
				],
			)
		);
	}
}
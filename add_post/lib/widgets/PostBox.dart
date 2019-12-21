import "package:flutter/material.dart";

class PostBox extends StatelessWidget {

	String title;
	String message;
	String date;

	PostBox(this.title, this.message, this.date);

	Widget build(BuildContext context){
		return Container(
			margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
			padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.all(Radius.circular(10)),
				boxShadow: [
					new BoxShadow(
						color: Colors.grey,
						offset: new Offset(0.0, 0.0),
						blurRadius: 5.0,
						spreadRadius: 1.0
					)
				]
			),
			child: Column(
				children: <Widget>[
					Row(
						mainAxisAlignment: MainAxisAlignment.spaceBetween,
						children: <Widget>[
							Text(title, style: TextStyle(color: Color(0xFF165ACE), fontSize: 13, fontFamily: "Nunito-SemiBold")),
							Text(date, style: TextStyle(color: Color(0xFF6B6B6B), fontSize: 10, fontFamily: "Nunito-SemiBoldItalic"))
						],
					),
					Container(
						margin: EdgeInsets.symmetric(vertical: 5),
						child: Column(
							children: <Widget>[
								Text(message, style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: "SourceSansPro-Regular"))
							],
						)
					)
				],
			),
		);
	}
}
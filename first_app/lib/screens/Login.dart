import "package:flutter/material.dart";
import "package:first_app/screens/Dashboard.dart";
import "package:first_app/helpers.dart";

class Login extends StatelessWidget {
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.spaceAround,
					children: <Widget>[
						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[Image.asset("assets/images/logo.png")]
						),
						Column(
						children: <Widget>[
							Container(
								margin: EdgeInsets.only(top: 10, bottom: 10),
								width: MediaQuery.of(context).size.width * 0.8,
								child: TextField(
								decoration: InputDecoration(
									border: OutlineInputBorder(
										borderRadius: BorderRadius.all(Radius.circular(10))),
									labelText: "Enter Email"
									),
								)),
							Container(
								margin: EdgeInsets.only(top: 10, bottom: 10),
								width: MediaQuery.of(context).size.width * 0.8,
								child: TextField(
								decoration: InputDecoration(
									border: OutlineInputBorder(
										borderRadius: BorderRadius.all(Radius.circular(10))),
									labelText: "Enter Password"
									),
								)),
							Container(
							margin: EdgeInsets.only(top: 10, bottom: 10),
							width: MediaQuery.of(context).size.width * 0.8,
							child: RaisedButton(
								onPressed: () {navigate(context, Dashboard());},
								color: Color(0xFF1DBC60),
								child: Text(
									"Sign In",
									style: TextStyle(fontSize: 20),
								),
								textColor: Color(0xFFFFFFFF),
								padding: EdgeInsets.only(top: 15, bottom: 15),
								shape: RoundedRectangleBorder(
									borderRadius: BorderRadius.circular(30)
								),
							),
							)
						],
						),
						Row(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								RichText(
								text: TextSpan(
									text: "Powered By ",
									style: TextStyle(fontSize: 20, color: Colors.black),
									children: [
										TextSpan(
											text: "PakStudents",
											style: TextStyle(color: Color(0xFF1DBC60))
										)
									]),
								)
							],
						)
					],
				),
			),
		);
	}
}

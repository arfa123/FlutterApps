import "package:flutter/material.dart";
import 'dart:async';
import "package:first_app/screens/Login.dart";
import "package:first_app/helpers.dart";

class Home extends StatelessWidget {

	Widget build(BuildContext context) {
		var display = MediaQuery.of(context).size;
		Timer t = Timer(Duration(milliseconds: 2000),(){
			navigateClearStack(context, Login());
		});
		return Scaffold(
			body: Stack(
				children: [
					Center(
						child: Image.asset("assets/images/logo.png", width: display.width-150, height: 200, fit:BoxFit.contain)
					),
					Positioned(
						bottom: 150,
						child: SizedBox(
							width: display.width,
							child: Center(
								child: CircularProgressIndicator(),
							),
						)
					),
				]
			)
		);
	}
}
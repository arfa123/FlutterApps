import "package:flutter/material.dart";
import "package:new_talk/widgets/SocialButton.dart";
import "package:new_talk/widgets/InputField.dart";
import "package:new_talk/widgets/SubmitButton.dart";
import "package:new_talk/widgets/AuthNav.dart";
import "package:new_talk/constants.dart";

class Login extends StatelessWidget {
	Widget build(BuildContext context) {
		return Scaffold(
			body: ListView(
				children: <Widget>[
					Padding(
						padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								RichText(
									text: TextSpan(
										text: "Welcome to ",
										style: TextStyle(fontSize: 33, fontFamily: FONTS["NUNITO_REG"], color: COLORS["DARK"]),
										children: [
											TextSpan(
												text: "New Talk",
												style: TextStyle(fontFamily: FONTS["NUNITO_BOLD"], color: COLORS["DARK"]),
											)
										]
									)
								),
								Text(
									"Please Login and Sign up to continue app",
									style: TextStyle(fontSize: 13, fontFamily: FONTS["MONTSERRAT_REG"], color: COLORS["MED_DARK"])
								)
							],
						),
					),
					Container(
						margin: EdgeInsets.symmetric(horizontal: 42),
						child: Column(
							children: <Widget>[
								Row(
									mainAxisAlignment: MainAxisAlignment.spaceBetween,
									children: <Widget>[
										Flexible(
											flex: 1,
											child: SocialButton(
												image: "assets/images/google.png",
												margin: EdgeInsets.only(right: 19)
											)
										),
										Flexible(
											flex: 1,
											child: SocialButton(
												image: "assets/images/facebook.png",
												margin: EdgeInsets.only(left: 19)
											)
										)
									],
								),
								Padding(
									padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
									child: Row(
										children: <Widget>[
											Expanded(
												child: Divider(color: COLORS["LIGHT_DARK"], thickness: 2)
											),
											Padding(
												padding: EdgeInsets.symmetric(horizontal: 10),
												child: Text(
													"or",
													style: TextStyle(fontSize: 21, fontFamily: FONTS["NUNITO_SEMI"], color: COLORS["LIGHT_DARK"])
												),
											),
											Expanded(
												child: Divider(color: COLORS["LIGHT_DARK"], thickness: 2)
											),
										]
									)
								),
								InputField(
									label: "Email",
									hintText: "Please enter your email",
									imageIcon: "assets/images/envelope.png",
								),
								InputField(
									label: "Password",
									hintText: "Please enter your password",
									imageIcon: "assets/images/password.png",
								),
								Row(
									mainAxisAlignment: MainAxisAlignment.end,
									children: <Widget>[
										Container(
											margin: EdgeInsets.only(bottom: 17),
											child: Text(
												"Forgot Password ?",
												style: TextStyle(fontSize: 15, fontFamily: FONTS["NUNITO_REG"], color: COLORS["DARK2"])
											)
										)
									],
								),
								Row(
									children: [
										Expanded(
											child: SubmitButton(
												title: "Login Now",
											)
										)
									]
								),
								AuthNav(title: "Register Now")
							],
						),	
					)
				],
			)
		);
	}
}
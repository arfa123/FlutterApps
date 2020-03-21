import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/services.dart";
import "package:modal_progress_hud/modal_progress_hud.dart";
import "package:new_talk/pages/Signup.dart";
import "package:new_talk/pages/Talks.dart";
import "package:new_talk/widgets/SocialButton.dart";
import "package:new_talk/widgets/InputField.dart";
import "package:new_talk/widgets/SubmitButton.dart";
import "package:new_talk/widgets/AuthNav.dart";
import "package:new_talk/constants.dart";
import "package:new_talk/utils.dart";

class Login extends StatefulWidget {
	LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
	TextEditingController emailCtrl = TextEditingController();
	TextEditingController passwordCtrl = TextEditingController();
	final _loginScaffoldKey = GlobalKey<ScaffoldState>();
	final _loginFormKey = GlobalKey<FormState>();
	bool isLoading = false;

	goToSignup(context) {
		navigateClearStack(context, Signup());
	}

	signinUser(context) async {
		String email = emailCtrl.text;
		String password = passwordCtrl.text;

		if (_loginFormKey.currentState.validate() && email.isNotEmpty && password.isNotEmpty) {
			var firebaseAuth = FirebaseAuth.instance;
			try{
				setState(() {
					isLoading = true;
				});
				var signinRes = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
				print("Signin res: $signinRes");
				navigateClearStack(context, Talks());
			} on PlatformException catch (error)  {
				setState(() {
					isLoading = false;
				});
				List<String> errors = error.toString().split(',');
				showDialog(errors[1]);
			} catch(e) {
				setState(() {
					isLoading = false;
				});
				print("Signin error: $e");
			}
		} else showDialog("Please fill all input fields");
	}

	showDialog(String message) {
		final snackBar = SnackBar(
			content: Text(message, style: TextStyle(color: Colors.white)),
			backgroundColor: Colors.red,
		);
		_loginScaffoldKey.currentState.showSnackBar(snackBar);
	}

	Widget build(BuildContext context) {
		return Scaffold(
			key: _loginScaffoldKey,
			body: ModalProgressHUD(
				inAsyncCall: isLoading,
				child: ListView(
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
						Form(
							key: _loginFormKey,
							child: Container(
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
														margin: EdgeInsets.only(right: 18)
													)
												),
												Flexible(
													flex: 1,
													child: SocialButton(
														image: "assets/images/facebook.png",
														margin: EdgeInsets.only(left: 18)
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
											valueController: emailCtrl,
											validate: () {
												if (!emailCtrl.text.contains("@")) return "Please enter a valid email";
												return null;
											}
										),
										InputField(
											label: "Password",
											hintText: "Please enter your password",
											imageIcon: "assets/images/password.png",
											valueController: passwordCtrl,
											validate: () {
												if (passwordCtrl.text.length < 6) return "Password must be at least 6 characters long";
												return null;
											}
										),
										Container(
											margin: EdgeInsets.only(bottom: 17),
											alignment: Alignment.topRight,
											child: InkWell(
												onTap: () {},
												child: Text(
													"Forgot Password ?",
													style: TextStyle(fontSize: 15, fontFamily: FONTS["NUNITO_REG"], color: COLORS["DARK2"])
												),
											),
										),
										Row(
											children: [
												Expanded(
													child: SubmitButton(
														title: "Login Now",
														onSubmit: () => signinUser(context),
													)
												)
											]
										),
										AuthNav(title: "Register Now", onPress: () => goToSignup(context))
									],
								),	
							),
						)
					],
				),
			)
		);
	}
}
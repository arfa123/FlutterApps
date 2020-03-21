import "package:flutter/material.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/services.dart";
import "package:modal_progress_hud/modal_progress_hud.dart";
import "package:new_talk/pages/Login.dart";
import "package:new_talk/pages/Talks.dart";
import "package:new_talk/widgets/SocialButton.dart";
import "package:new_talk/widgets/InputField.dart";
import "package:new_talk/widgets/SubmitButton.dart";
import "package:new_talk/widgets/AuthNav.dart";
import "package:new_talk/constants.dart";
import "package:new_talk/utils.dart";

class Signup extends StatefulWidget {
	SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
	TextEditingController fullNameCtrl = TextEditingController();
	TextEditingController emailCtrl = TextEditingController();
	TextEditingController passwordCtrl = TextEditingController();
	TextEditingController cPasswordCtrl = TextEditingController();
	final _signupScaffoldKey = GlobalKey<ScaffoldState>();
	final _signupFormKey = GlobalKey<FormState>();
	bool isLoading = false;

	Widget build(BuildContext context) {
		return Scaffold(
			key: _signupScaffoldKey,
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
							key: _signupFormKey,
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
											label: "Full Name",
											hintText: "Please enter your full name",
											imageIcon: "assets/images/envelope.png",
											valueController: fullNameCtrl,
											validate: () {
												if (fullNameCtrl.text.length < 5) return "Please enter your full name";
												return null;
											},
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
										InputField(
											label: "Confirm Password",
											hintText: "Please enter your confirm password",
											imageIcon: "assets/images/password.png",
											valueController: cPasswordCtrl,
											validate: () {
												if (passwordCtrl.text != cPasswordCtrl.text) return "Password doesn't matching";
												return null;
											}
										),
										Row(
											children: [
												Expanded(
													child: SubmitButton(
														title: "Register Now",
														onSubmit: () => signupUser(context),
													)
												)
											]
										),
										AuthNav(title: "Login Now", onPress: () => goToLogin(context)),
									],
								),	
							),
						)
					],
				),
			)
		);
	}

	goToLogin(context) {
		navigateClearStack(context, Login());
	}

	signupUser(context) async {
		String fullName = fullNameCtrl.text;
		String email = emailCtrl.text;
		String password = passwordCtrl.text;
		String cPassword = cPasswordCtrl.text;
		if (_signupFormKey.currentState.validate() && fullName.isNotEmpty && email.isNotEmpty && password.isNotEmpty && cPassword.isNotEmpty) {
			if (password == cPassword) {
				var firebaseAuth = FirebaseAuth.instance;
				try{
					setState(() {
						isLoading = true;
					});
					var signupRes = await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
					print("Signup res: $signupRes");
					//Get the created user
					FirebaseUser u = signupRes.user;

					//Build profile update request
					var infoUpdate = UserUpdateInfo();
					infoUpdate.displayName = fullName;

					//Update profile now!
					await u.updateProfile(infoUpdate);

					FirebaseUser realtimeUser = await firebaseAuth.currentUser();
					print(realtimeUser.displayName);
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
			} else {
				showDialog("Password doesn't match");
			}
		} else showDialog("Please fill all input fields");
	}

	showDialog(String message) {
		final snackBar = SnackBar(
			content: Text(message, style: TextStyle(color: Colors.white)),
			backgroundColor: Colors.red,
		);
		_signupScaffoldKey.currentState.showSnackBar(snackBar);
	}
}
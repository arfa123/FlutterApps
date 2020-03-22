import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:new_talk/pages/Login.dart";
import "package:new_talk/pages/Signup.dart";
import "package:new_talk/pages/Talks.dart";
import "package:new_talk/models/auth.dart";

class App extends StatelessWidget {

	Widget build(BuildContext context) {
		return MultiProvider(
			providers: [
				ChangeNotifierProvider<AuthModel>(create: (context) => AuthModel())
			],
			child: MaterialApp(
				initialRoute: "/login",
				routes: {
					"/login": (context) => Login(),
					"/signup": (context) => Signup(),
					"/talks": (context) => Talks()
				}
			),
		);
	}
}
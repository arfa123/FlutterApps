import "package:flutter/material.dart";
import "package:add_post/pages/Posts.dart";

class App extends StatelessWidget {

	Widget build(BuildContext context) {
		return MaterialApp(
			home: Posts(),
		);
	}
}
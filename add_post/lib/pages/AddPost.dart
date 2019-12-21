import "package:flutter/material.dart";
import 'package:intl/intl.dart';

typedef AddPostFunc(String title, String message, String date);

class AddPost extends StatelessWidget {

	TextEditingController titleController;
	TextEditingController messageController;

	AddPostFunc addPost;

	AddPost(this.addPost);

	Widget build(BuildContext context) {

		if (titleController == null) titleController = TextEditingController(text: "");
		if (messageController == null) messageController = TextEditingController(text: "");

		return Scaffold(
			appBar: AppBar(
				backgroundColor: Colors.white,
				leading: IconButton(
					icon: Icon(Icons.arrow_back),
					color: Color(0xFF165ACE),
					iconSize: 30,
					onPressed: () {Navigator.pop(context);}
				),
				title: TextField(
					controller: titleController,
					decoration: InputDecoration(
						border: InputBorder.none,
						hintText: "Enter Title",
						contentPadding: EdgeInsets.only(right: 10)
					),
					style: TextStyle(fontSize: 28, color: Colors.black, fontFamily: "OpenSans-Italic"),
					textAlign: TextAlign.right
				),
			),
			body: Column(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					TextField(
						controller: messageController,
						decoration: InputDecoration(
							hintText: "You want to write something ..",
							contentPadding: EdgeInsets.all(15)
						),
						maxLines: 10,
						style: TextStyle(fontSize: 24, color: Colors.black, fontFamily: "OpenSans-Regular"),
					),
					Container(
						margin: EdgeInsets.only(bottom: 32),
						width: 301,
						height: 48,
						child: RaisedButton(
							onPressed: () {
								Navigator.of(context).pop();
								String date = DateFormat.yMMMMd().format(DateTime.now());
								addPost(titleController.text, messageController.text, date);
							},
							color: Color(0xFF165ACE),
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.circular(24)
							),
							child: Row(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: <Widget>[
									Text("Write Post", style: TextStyle(color: Colors.white, fontSize: 21, fontFamily: "OpenSans-SemiBold"),),
									Icon(Icons.add, color: Colors.white, size: 30,)
								],
							),
						),
					)
				],
			),
		);
	}
}
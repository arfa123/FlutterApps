import "package:flutter/material.dart";
import "package:add_post/widgets/AvatarImage.dart";
import "package:add_post/widgets/PostBox.dart";
import "package:add_post/pages/AddPost.dart";
import "package:add_post/Utils.dart";
import "package:add_post/models/postModel.dart";

const List avatarsList = [
	"assets/images/image1.jpg", "assets/images/image3.jpg", "assets/images/image4.jpg", "assets/images/image5.jpg", "assets/images/image6.jpg"
];

class Posts extends StatefulWidget {
	_PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {

	List posts;

	void initState() {
		super.initState();
		Post headerPost = Post("Muhammad Usama", "", "");
		posts = [headerPost];
	}

	Widget build(BuildContext context) {
		return Scaffold(
			body: ListView.builder(
				itemCount: posts.length,
				itemBuilder: (ctx, index) {
					if (index == 0) {
						return headerList();
					} else {
						return PostBox(posts[index].title, posts[index].message, posts[index].date);
					}
				},
			),
			floatingActionButton: FloatingActionButton(
				onPressed: () {navigate(context, AddPost(addPost));},
				child: Icon(Icons.add),
				backgroundColor: Color(0xFF165ACE),
			)
		);
	}

	addPost(String title, String message, String date) {
		Post post = Post(title, message, date);
		setState(() {
		  posts.add(post);
		});
	}

	Widget headerList() {
		return Container(
			height: 136,
			margin: EdgeInsets.symmetric(vertical: 18),
			padding: EdgeInsets.symmetric(horizontal: 10),
			child: ListView.builder(
				scrollDirection: Axis.horizontal,
				itemCount: avatarsList.length,
				itemBuilder: (ctx, index) {
					return AvatarImage(avatarsList[index]);
				},
			)
		);
	}
}
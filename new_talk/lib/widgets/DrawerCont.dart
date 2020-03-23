import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:new_talk/constants.dart";
import "package:new_talk/models/auth.dart";

class DrawerCont extends StatelessWidget {

	Widget build(BuildContext context) {
		return Drawer(
			child: Column(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					Expanded(
						child: Padding(
							padding: EdgeInsets.only(left: 31.0, right: 31.0),
							child: Consumer<AuthModel>(
								builder: (context, authModel, child) => ListView(
									children: <Widget>[
										Container(
											margin: EdgeInsets.only(top: 38.0),
											child: CircleAvatar(
												radius: 45.0,
												backgroundColor: Colors.brown.shade800
											),
										),
										Container(
											margin: EdgeInsets.symmetric(vertical: 20),
											alignment: Alignment.center,
											child: Text(authModel.userData.userName,
												style: TextStyle(
													color: COLORS["DARK"],
													fontFamily: FONTS["MONTSERRAT_MED"],
													fontSize: 17
												)
											)
										),
										Row(
											mainAxisAlignment: MainAxisAlignment.spaceBetween,
											children: <Widget>[
												StatusBox("50", "POSTS"),
												Spacer(),
												StatusBox("10", "SHARES"),
												Spacer(),
												StatusBox("100", "VIEWS")
											],
										),
										Container(
											margin: EdgeInsets.only(top: 34),
											child: Column(
												crossAxisAlignment: CrossAxisAlignment.start,
												children: <Widget>[
													Text("About Me",
														style: TextStyle(
															color: COLORS["DARK"],
															fontFamily: FONTS["MONTSERRAT_MED"],
															fontSize: 13
														)
													),
													Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
														style: TextStyle(
															color: Color(0xFF676767),
															fontFamily: FONTS["NUNITO_REG"],
															fontSize: 12
														)
													)
												],
											),
										)
									],
								),
							),
						),
					),
					Column(
						mainAxisAlignment: MainAxisAlignment.end,
						children: <Widget>[
							BottomButton(
								"Post your Talk",
								COLORS["DARK"],
								COLORS["WHITE"],
								"assets/images/tick.png"),
							BottomButton(
								"Logout",
								COLORS["WHITE"],
								COLORS["DARK"],
								"assets/images/logout.png")
						],
					)
				],
			),
		);
	}

	Widget StatusBox(String number, String type) {
		return Expanded(
			flex: 5,
			child: Container(
				color: Color(0xFFF0F0F0),
				height: 72,
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text(number,
							style: TextStyle(
								color: COLORS["DARK"],
								fontFamily: FONTS["MONTSERRAT_MED"],
								fontSize: 26
							)
						),
						Text(type,
							style: TextStyle(
								color: COLORS["DARK"],
								fontFamily: FONTS["MONTSERRAT_MED"],
								fontStyle: FontStyle.italic,
								fontSize: 12
							)
						)
					],
				),
			)
		);
	}

	Widget BottomButton(String title, Color bgColor, Color textColor, String imageIcon) {
		return FlatButton(
			materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
			padding: EdgeInsets.symmetric(vertical: 13, horizontal: 23),
			onPressed: () => {},
			color: bgColor,
			child: Row(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					Text(title,
						style: TextStyle(
							color: textColor,
							fontFamily: FONTS["NUNITO_SEMI"],
							fontSize: 17
						),
					),
					ImageIcon(AssetImage(imageIcon))
				],
			),
		);
	}
}
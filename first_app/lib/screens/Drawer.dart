import "package:flutter/material.dart";

class DrawerComp extends StatelessWidget{

	Widget build(BuildContext context){
		return Container(
			color: Colors.white,
			width: MediaQuery.of(context).size.width * 0.6,
			child: Column(
				mainAxisAlignment: MainAxisAlignment.spaceBetween,
				children: <Widget>[
					Container(
						child: Column(
							children: <Widget>[
								Container(
									child: Padding(
										padding: EdgeInsets.symmetric(vertical: 40),
										child: Image.asset("assets/images/logo.png", width: 145,),
									),
								),
								Container(
									child: ListView(
										shrinkWrap: true,
										children: <Widget>[
											Container(
												padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
												child: Text("Dashboard", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular")),
											),
											Container(
												padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
												child: Text("Assignments", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular")),
											),
											Container(
												padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
												child: Text("Programs", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular")),
											),Container(
												padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
												child: Text("Logout", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular")),
											),
										],
									),
								)
							],
						),
					),
					Container(
						height: 57,
						decoration: BoxDecoration(color: Color(0xFF1DBC60)),
						child: Row(
							mainAxisAlignment: MainAxisAlignment.spaceAround,
							children: <Widget>[
								Icon( Icons.call, color: Colors.white ),
								Text("+92 3171015636", style: TextStyle(color: Colors.white, fontSize: 17, fontFamily: "Montserrat-Medium"),)
							],
						),
					)
				],
			),
		);
	}
}
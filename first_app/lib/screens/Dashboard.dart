import "package:flutter/material.dart";
import "package:first_app/screens/Drawer.dart";

class Dashboard extends StatelessWidget{

	Widget build(BuildContext context){
		return Scaffold(
			drawer: DrawerComp(),
			appBar: AppBar(
				centerTitle: true,
				iconTheme: IconThemeData(color: Color(0xFF1DBC60)),
				title: Text("Dashboard", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: "Montserrat-Regular"),),
				backgroundColor: Colors.white,
			),
			body: 
				Container(
					padding: EdgeInsets.only(left: 20, right: 20),
					child: 
						Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							mainAxisAlignment: MainAxisAlignment.spaceAround,
							children: <Widget>[
								Container(
									// margin: EdgeInsets.symmetric(vertical: 20),
									child: Column(
										crossAxisAlignment: CrossAxisAlignment.start,
										children: <Widget>[
											Text("Salam,", style: TextStyle(color: Colors.black, fontSize: 26, fontFamily: "Montserrat-SemiBold")),
											Text("Muhammad Usama Hussain", style: TextStyle(color: Color(0xFF1DBC60), fontSize: 15, fontFamily: "Montserrat-Regular"),)
										],
									),
								),
								Row(
									mainAxisAlignment: MainAxisAlignment.spaceBetween,
									children: <Widget>[
										Flexible(
											child: Container(
												height: 104,
												margin: EdgeInsets.only(right: 5),
												decoration: BoxDecoration(border: Border.all(color: Color(0xFFE4E4E4)), borderRadius: BorderRadius.all(Radius.circular(10))),
												child: Center(
													child: Column(
														mainAxisAlignment: MainAxisAlignment.center,
														children: <Widget>[
															Text("30", style: TextStyle(color: Color(0xFF1DBC60), fontSize: 38, fontFamily: "Montserrat-Regular"),),
															Text("Total Assignment", style: TextStyle(color: Colors.black, fontSize: 11, fontFamily: "Montserrat-Regular"))
														],
													),
												),
											),
										),
										Flexible(
											child: Container(
												height: 104,
												margin: EdgeInsets.only(left: 5),
												decoration: BoxDecoration(color: Color(0xFF1DBC60), borderRadius: BorderRadius.all(Radius.circular(10))),
												child: Center(
													child: Column(
														mainAxisAlignment: MainAxisAlignment.center,
														children: <Widget>[
															Text("50%", style: TextStyle(color: Colors.white, fontSize: 38, fontFamily: "Montserrat-Regular"),),
															Text("Total Assignment", style: TextStyle(color: Colors.white, fontSize: 11, fontFamily: "Montserrat-Medium"))
														],
													),
												),
											)
										)
									],
								),
								Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										RichText(
											text: TextSpan(
												text: "Current ",
												style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular", color: Colors.black),
												children: [
													TextSpan(
														text: "Assignment", style: TextStyle(fontFamily: "Montserrat-Medium")
													)
												]
											)
										),
										Container(
											child: ListView(
												shrinkWrap: true,
												children: <Widget>[
													Container(
														height: 66,
														margin: EdgeInsets.symmetric(vertical: 10),
														decoration: BoxDecoration(border: Border.all(color: Color(0xFFE4E4E4)), borderRadius: BorderRadius.all(Radius.circular(10))),
														child: Row(
															mainAxisAlignment: MainAxisAlignment.spaceAround,
															children: <Widget>[
																Image.asset("assets/images/icon.png", width: 26, height: 26),
																Column(
																	mainAxisAlignment: MainAxisAlignment.center,
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: <Widget>[
																		Text("Task Management System", style: TextStyle(fontSize: 13, fontFamily: "Montserrat-Regular")),
																		Text("Flutter Course", style: TextStyle(fontSize: 13, fontFamily: "Montserrat-Regular", color: Color(0xFF1DBC60)))
																	],
																),
																Container(
																	width: 68,
																	height: 20,
																	decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF1DBC60)),
																	child: Center(
																		child: Text("Pending", style: TextStyle(fontSize: 10, fontFamily: "Montserrat-Medium", color: Color(0xFFFFFFFF))),
																	)
																)
															],
														),
													),
													Container(
														height: 66,
														margin: EdgeInsets.symmetric(vertical: 10),
														decoration: BoxDecoration(border: Border.all(color: Color(0xFFE4E4E4)), borderRadius: BorderRadius.all(Radius.circular(10))),
														child: Row(
															mainAxisAlignment: MainAxisAlignment.spaceAround,
															children: <Widget>[
																Image.asset("assets/images/icon.png", width: 26, height: 26),
																Column(
																	mainAxisAlignment: MainAxisAlignment.center,
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: <Widget>[
																		Text("Design a shoping website", style: TextStyle(fontSize: 13, fontFamily: "Montserrat-Regular")),
																		Text("Ux & Ui Course", style: TextStyle(fontSize: 13, fontFamily: "Montserrat-Regular", color: Color(0xFF1DBC60)))
																	],
																),
																Container(
																	width: 68,
																	height: 20,
																	decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFFF91F1F)),
																	child: Center(
																		child: Text("To Late", style: TextStyle(fontSize: 10, fontFamily: "Montserrat-Medium", color: Color(0xFFFFFFFF))),
																	)
																)
															],
														),
													),
													Container(
														height: 66,
														margin: EdgeInsets.symmetric(vertical: 10),
														decoration: BoxDecoration(border: Border.all(color: Color(0xFFE4E4E4)), borderRadius: BorderRadius.all(Radius.circular(10))),
														child: Row(
															mainAxisAlignment: MainAxisAlignment.spaceAround,
															children: <Widget>[
																Image.asset("assets/images/icon.png", width: 26, height: 26),
																Column(
																	mainAxisAlignment: MainAxisAlignment.center,
																	crossAxisAlignment: CrossAxisAlignment.start,
																	children: <Widget>[
																		Text("Make Cartoon Illustration", style: TextStyle(fontSize: 13, fontFamily: "Montserrat-Regular")),
																		Text("Graphic Designing Course", style: TextStyle(fontSize: 13, fontFamily: "Montserrat-Regular", color: Color(0xFF1DBC60)))
																	],
																),
																Container(
																	width: 68,
																	height: 20,
																	decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color(0xFF1DBC60)),
																	child: Center(
																		child: Text("Submit", style: TextStyle(fontSize: 10, fontFamily: "Montserrat-Medium", color: Color(0xFFFFFFFF))),
																	)
																)
															],
														),
													)
												],
											)
										)
									]
								),
								Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Container(
											margin: EdgeInsets.symmetric(vertical: 5),
											child: Text("My Programs", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular", color: Colors.black),),
										),
										Container(
											height: 66,
											decoration: BoxDecoration(border: Border.all(color: Color(0xFFE4E4E4)), borderRadius: BorderRadius.all(Radius.circular(10))),
											child: Row(
												children: <Widget>[
													Expanded(
														flex: 2,
														child: Container(
															padding: EdgeInsets.only(left: 20),
															child: Text("Flutter Course", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular", color: Colors.black),),
														),
													),
													Expanded(
														flex: 1,
														child: Container(
															decoration: BoxDecoration(color: Color(0xFF1DBC60), borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))),
															child: Column(
																mainAxisAlignment: MainAxisAlignment.center,
																children: [
																	Text("3 Months", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-SemiBold", color: Colors.white),),
																	Text("Remaining", style: TextStyle(fontSize: 15, fontFamily: "Montserrat-Regular", color: Colors.white),)
																]
															),
														)
													)
												],
											),
										)
									],
								)
							],
				),
			),
		);
	}
}
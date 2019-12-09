import "package:flutter/material.dart";

class Dashboard extends StatelessWidget{

	Widget build(BuildContext context){
		return Scaffold(
			drawer: Container(
				color: Colors.white,
				width: MediaQuery.of(context).size.width * 0.6,
			),
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
							// mainAxisAlignment: MainAxisAlignment.spaceAround,
							children: <Widget>[
								Container(
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
										Container(
											height: 104,
											width: 180,
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
										Container(
											height: 104,
											width: 180,
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
									],
								),
								Column(
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
									]
								)
							],
				),
			),
		);
	}
}

Widget Item() {
	return Container(
		child: Row(
			children: <Widget>[
				Flexible(
					flex: 8,
					// child: ,
				)
			],
		),
	);
}
import "package:flutter/material.dart";

Size deviceDim;

navigate(BuildContext context, Widget page) {
	var nav = Navigator.of(context);
	var route = MaterialPageRoute(builder: (context) => page);
	nav.push(route);
}

navigateClearStack(BuildContext context, Widget route){
	Navigator.pushAndRemoveUntil(
		context,
		MaterialPageRoute(builder: (context) => route),
		ModalRoute.withName("/ROOT")
	);
}

setDeviceDimension(Size size) {
	print("setDeviceDimension $size");
	deviceDim = size;
}
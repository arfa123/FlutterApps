import "package:flutter/material.dart";
import "package:new_talk/constants.dart";

class InputField extends StatelessWidget {
	String label;
	String hintText;
	String imageIcon;
	TextEditingController valueController;
	Function validate;

	InputField({this.label, this.hintText, this.imageIcon, this.valueController, this.validate});

	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(bottom: 25),
			child: TextFormField(
				controller: valueController,
				decoration: InputDecoration(
					border: OutlineInputBorder(
						borderRadius: BorderRadius.all(Radius.circular(6)),
					),
					enabledBorder: OutlineInputBorder(
						borderSide: BorderSide(color: COLORS["LIGHT_DARK"], width: 2),
						borderRadius: BorderRadius.all(Radius.circular(6)),
					),
					contentPadding: EdgeInsets.all(14),
					labelText: label,
					labelStyle: TextStyle(fontSize: 14, fontFamily: FONTS["NUNITO_REG"]),
					hintText: hintText,
					hintStyle: TextStyle(fontSize: 14, fontFamily: FONTS["NUNITO_LIGHT"]),
					suffixIcon: ImageIcon(AssetImage(imageIcon))
				),
				style: TextStyle(fontSize: 14, fontFamily: FONTS["NUNITO_REG"]),
				validator: (value) {
					return validate();
				},
			),
		);
	}
}
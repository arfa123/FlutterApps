import "package:flutter/foundation.dart";
import "package:new_talk/models/userData.dart";

class AuthModel extends ChangeNotifier {
	bool isLogedIn = false;
	UserData userData;

	void userLogedIn(UserData data) {
		userData = data;
		isLogedIn = true;

		notifyListeners();
	}

	void userLogedOut() {
		userData = null;
		isLogedIn = false;

		notifyListeners();
	}
}
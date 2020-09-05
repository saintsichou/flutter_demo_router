import 'package:flutter/material.dart';
import 'package:learn_flutter/provider/user.dart';

class User extends ChangeNotifier {
  UserInfo _user;

  User(this._user);
  UserInfo get user => _user;
  set user(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:whats_app_clone/scripts/Creds.dart';
import 'package:whats_app_clone/scripts/home.dart';
import 'package:whats_app_clone/main.dart';
import 'package:whats_app_clone/scripts/loginprocess.dart';

const String CredsPage = 'Creds';
const String HomePagePage = 'Home';
const String LoginPage = 'LoginProcess';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case CredsPage:
      return MaterialPageRoute(builder: (context) => Credentials());
      break;
    case HomePagePage:
      return MaterialPageRoute(builder: (context) => HomePage());
      break;
    case LoginPage:
      return MaterialPageRoute(builder: (context) => loginForm());
    default:
      throw ('This page does not exist');
  }
}

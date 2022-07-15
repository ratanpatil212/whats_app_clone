import 'package:flutter/material.dart';
import 'package:ritz/scripts/Creds.dart';
import 'package:ritz/scripts/home.dart';
import 'package:ritz/scripts/loginprocess.dart';
import 'package:ritz/scripts/settingspage.dart';
import 'package:ritz/scripts/subsettings/profilepage.dart';

const String CredsPage = 'Creds';
const String HomePagePage = 'Home';
const String LoginPage = 'LoginProcess';
const String SettingsPage = 'Settings';
const String ProfilePage = 'Profile';

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
      break;
    case SettingsPage:
      return MaterialPageRoute(builder: (context) => SettingsList());
      break;
    case ProfilePage:
      return MaterialPageRoute(builder: (context) => Profile());
    default:
      throw ('This page does not exist');
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whats_app_clone/scripts/home.dart';
import 'package:whats_app_clone/route/route.dart' as route;
import 'package:whats_app_clone/scripts/loginprocess.dart';
import 'package:whats_app_clone/scripts/signupprocess.dart';

class Credentials extends StatefulWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  State<Credentials> createState() => _CredentialsState();
}

class _CredentialsState extends State<Credentials>
    with SingleTickerProviderStateMixin {
  late TabController _credsTabController;

  @override
  void initState() {
    super.initState();

    _credsTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _credsTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        backgroundColor: HexColor("#075E54"),
        bottom: TabBar(
          tabs: [
            Tab(child: Text("Login")),
            Tab(child: Text("SignUp")),
          ],
          indicatorColor: Colors.white,
          controller: _credsTabController,
        ),
      ),
      body: Center(
        child: TabBarView(
          controller: _credsTabController,
          children: [
            loginForm(),
            signUpProcess(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, route.HomePagePage),
        child: Icon(Icons.message),
        backgroundColor: HexColor("#075E54"),
      ),
    );
  }
}
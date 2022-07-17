// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ritz/route/route.dart' as route;
import 'package:ritz/scripts/loginprocess.dart';
import 'package:ritz/scripts/signupprocess.dart';

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
        automaticallyImplyLeading: false,
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
            Container(
              child: Column(
                children: <Widget>[
                  loginForm(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () => {print("FB icon tapped")},
                            child: Image.asset(
                              "assets/smallicons/fbicon.png",
                              height: 40,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () => {print("Google icon tapped")},
                            child: Image.asset(
                              "assets/smallicons/googleicon.png",
                              height: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            signUpProcess(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, route.HomePagePage),
        backgroundColor: HexColor("#075E54"),
        child: Text("By pass login"),
      ),
    );
  }
}

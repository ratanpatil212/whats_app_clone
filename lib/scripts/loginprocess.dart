import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whats_app_clone/scripts/home.dart';
import 'package:whats_app_clone/route/route.dart' as route;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginForm extends StatefulWidget {
  const loginForm({Key? key}) : super(key: key);

  @override
  State<loginForm> createState() => _loginFormState();
}

class _loginFormState extends State<loginForm> {
  final _formkey = GlobalKey<FormState>();
  final _myusercontroller = TextEditingController();
  final _mypasscontroller = TextEditingController();

  void dispose() {
    _myusercontroller.dispose();
    _mypasscontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _myusercontroller,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Username",
            ),
            validator: (value) {
              if (value == null) {
                return "Please enter some text";
              }
              return value;
            },
          ),
          TextFormField(
            controller: _mypasscontroller,
            decoration: InputDecoration(
              icon: const Icon(Icons.password),
              hintText: "Password",
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () async {
                try {
                  final user = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _myusercontroller.text,
                          password: _mypasscontroller.text);
                  // .then((value) => print(value));
                  Fluttertoast.showToast(
                      msg: 'User Identified Successfully',
                      toastLength: Toast.LENGTH_SHORT);
                  await Future.delayed(const Duration(seconds: 1));
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, route.HomePagePage);
                } on FirebaseAuthException catch (e) {
                  Fluttertoast.showToast(
                    msg: e.message.toString(),
                    toastLength: Toast.LENGTH_LONG,
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

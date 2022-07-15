import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ritz/scripts/home.dart';
import 'package:ritz/route/route.dart' as route;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signUpProcess extends StatefulWidget {
  const signUpProcess({Key? key}) : super(key: key);

  @override
  State<signUpProcess> createState() => _signUpProcessState();
}

class _signUpProcessState extends State<signUpProcess> {
  final _auth = FirebaseAuth.instance;
  final _signupFormKey = GlobalKey<FormState>();
  final _myusercontroller = TextEditingController();
  final _mypasscontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signupFormKey,
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
                icon: Icon(Icons.password),
                hintText: "Password",
              ),
              validator: (passvalid) {
                if (passvalid == null) {
                  return "Please enter password";
                } else if (passvalid.length < 8) {
                  return "Please enter a password with 8 or more chars";
                }
              }),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: () async {
                try {
                  await _auth
                      .createUserWithEmailAndPassword(
                          email: _myusercontroller.text,
                          password: _mypasscontroller.text)
                      .then((value) => Fluttertoast.showToast(
                            msg: 'User Successfully created',
                            toastLength: Toast.LENGTH_LONG,
                          ));
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

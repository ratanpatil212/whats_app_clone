import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class userinfologic {
  // FirebaseAuth _auth = FirebaseAuth.instance;
  datauid() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        print("Printing user id");
        print(user.uid);
      } else {
        print("User id not found");
      }
    });
  }
}

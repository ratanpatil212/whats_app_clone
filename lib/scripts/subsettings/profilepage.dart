import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const url =
    'https://drive.google.com/file/d/148ScOYjt6ODBIw_mPIaJ8_ww7rOMIr8v/view?usp=sharing';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.baloo2(fontSize: 22),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.only(bottom: 18, top: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/square.jpg'),
                radius: 90,
              ),
              // ignore: prefer_const_constructors
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 0, left: 20, right: 20),
                      child: Icon(
                        Icons.person,
                        size: 30,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Text("Name",
                          style: GoogleFonts.baloo2(
                            fontSize: 20,
                          )),
                      Text(
                        "Your Name",
                        style: GoogleFonts.baloo2(
                          fontSize: 25,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                      Text("Name Description"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Text("About"),
            ),
            Container(
              child: Text("Phone"),
            ),
          ],
        ),
      ),
    );
  }
}

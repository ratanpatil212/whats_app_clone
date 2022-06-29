import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color1 = HexColor("#128C7E");
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Whatsapp'),
        backgroundColor: color1,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_vert,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: color1,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
              child: GestureDetector(
                onTap: () {},
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Chats",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Whatsapp',
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
          ),
        ),
        backgroundColor: HexColor("#075E54"),
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
        color: HexColor("#075E54"),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 12, 1, 8),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width * (1 / 7),
            //   color: HexColor("#075E54"),
            //   child: Material(
            //     child: const Icon(
            //       Icons.camera_alt_rounded,
            //       color: Colors.black,
            //       size: 20,
            //     ),
            //   ),
            // ),
            subsection(subname: 'CHATS'),
            subsection(subname: 'STATUS'),
            subsection(subname: 'CALLS'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: HexColor("#075E54"),
      ),
    );
  }
}

class subsection extends StatelessWidget {
  final String subname;
  const subsection({required this.subname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * (2 / 7),
        padding: EdgeInsets.fromLTRB(1, 12, 1, 0),
        height: 40,
        child: Text(
          subname,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onTap: () {
        Fluttertoast.showToast(
            msg: subname + " was pressed",
            toastLength: Toast.LENGTH_SHORT,
            fontSize: 18.0);
      },
    );
  }
}

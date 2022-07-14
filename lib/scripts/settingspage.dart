import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class SettingsList extends StatefulWidget {
  const SettingsList({Key? key}) : super(key: key);

  @override
  State<SettingsList> createState() => _SettingsListState();
}

class _SettingsListState extends State<SettingsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Column(
        children: [
          Container(
            child: Text("Profile"),
            height: 50,
          ),
          Container(
            height: 500,
            child: Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.key_rounded,
                            size: 30,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Account",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Footer for Mains",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text("Maps"),
                  ),
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text("Maps"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whats_app_clone/route/route.dart' as route;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  String _popupTitle = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List li = [
    "New Group",
    "New Broadcast",
    "Linked Devices",
    "Starred messages",
    "Payments",
    "Settings"
  ];
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
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 5) {
                Navigator.pushNamed(context, route.SettingsPage);
              }
            },
            itemBuilder: (context) => [
              // popupmenu item 1
              const PopupMenuItem(
                value: 1,
                child: Text("New Group"),
              ),
              // popupmenu item 2
              const PopupMenuItem(
                value: 2,
                child: Text("New Broadcast"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Linked Devices"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Starred messages"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Payments"),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Settings"),
              ),
            ],
            // offset: Offset(0, 50),
            color: Colors.white,
            elevation: 10,
          ),
        ],
        backgroundColor: HexColor("#075E54"),
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
                child: Text(
              "STATUS",
            )),
            Tab(
                child: Text(
              "CALLS",
            )),
          ],
          indicatorColor: Colors.white,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Icon(Icons.camera_alt),
          Text("CHATS Screen"),
          Text("Status Screen"),
          Text("Call Screen"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, route.CredsPage),
        child: Icon(Icons.message),
        backgroundColor: HexColor("#075E54"),
      ),
    );
  }
}

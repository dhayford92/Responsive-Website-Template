import 'package:flutter/material.dart';

var defaultBackground = Colors.grey[300];

var appBar2 = AppBar(
  backgroundColor: Colors.grey[300],
);

var drawer2 = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
        leading: Icon(Icons.home),
        title: Text(
          'DASBOARD',
          style: TextStyle(letterSpacing: 2.0),
        )),
    ListTile(
        leading: Icon(Icons.message),
        title: Text(
          'MESSAGE',
          style: TextStyle(letterSpacing: 2.0),
        )),
    ListTile(
        leading: Icon(Icons.settings),
        title: Text(
          'SETTINGS',
          style: TextStyle(letterSpacing: 2.0),
        )),
    ListTile(
        leading: Icon(Icons.logout),
        title: Text(
          'LOGOUT',
          style: TextStyle(letterSpacing: 2.0),
        )),
  ]),
);

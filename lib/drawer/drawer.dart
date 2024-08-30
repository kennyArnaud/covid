import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
    ListTile(
    leading: Icon(Icons.account_circle_outlined),
    title: Text('profile'),
    onTap: () {

    Navigator.pop(context); // Close the drawer
    },
    ),
    ListTile(
    leading: Icon(Icons.call),
    title: Text('call'),
    onTap: () {
    // Action when "Profile" is tapped
    Navigator.pop(context); // Close the drawer
    },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text('Settings'),
    onTap: () {
    // Action when "Settings" is tapped
    Navigator.pop(context); // Close the drawer
    },
    ),

    ],
    ),
    );
  }
}

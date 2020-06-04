import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Yash Mehta"),
              accountEmail: Text("admin@yashymehta.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/57744045?s=460&u=64e12071dc46351e8c9d3af5a7672bba32dea316&v=4')),
              ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Yash Mehta"),
              trailing: Icon(Icons.edit,),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Email"),
              subtitle: Text("admin@yashymehta.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone"),
              subtitle: Text("7028284121"),
              trailing: Icon(Icons.message),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Website"),
              subtitle: Text("www.yashymehta.com"),
              trailing: Icon(Icons.open_in_browser),
            ),
          ],
        ),
      );
  }
}
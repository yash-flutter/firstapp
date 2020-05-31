import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    theme: ThemeData(primarySwatch: Colors.cyan),
    home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Awesome App"),),
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){},
        child: Icon(Icons.edit),
        
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Yash Mehta"),
              accountEmail: Text("admin@yashymehta.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Yash Mehta"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Email"),
              subtitle: Text("admin@yashymehta.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),
      
    );
  }
}
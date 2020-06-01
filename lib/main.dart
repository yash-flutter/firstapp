import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    theme: ThemeData(primarySwatch: Colors.cyan),
    debugShowCheckedModeBanner: false,
    home:MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _name = TextEditingController(); 
  var mytext="Change Me";
 
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar:AppBar(title: Text("Awesome App"),),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
                  child: Card(
                    color: Colors.cyanAccent,
            child:Column(
              children:<Widget> [
                Image.asset('assets/bg.jpg',
                fit: BoxFit.contain),
                SizedBox(height: 20,),
                Text(mytext,
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold)),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText:"Enter Something Here",
                      labelText: "Name",
                      border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText:"Enter Something Here",
                      labelText: "Password",
                      border: OutlineInputBorder()),
                  ),
                )
              
              ],) ,),
        ),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
          mytext=_name.text;
          setState(() {});
        },
        child: Icon(Icons.get_app),
        
      ),
      
      drawer: Drawer(
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
              trailing: Icon(Icons.edit),
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
      ),
      
    );
  }
}
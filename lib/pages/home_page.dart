import 'package:flutter/material.dart';

import 'package:firstapp/change_name_card.dart';
import 'package:firstapp/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    elevation: 20,
            child:ChangeNameCard(mytext: mytext, name: _name) ,),
        ),
      ),
      
      
      floatingActionButton: FloatingActionButton(
        
        onPressed: (){
          mytext=_name.text;
          setState(() {});
        },
        child: Icon(Icons.get_app),
        
      ),
      
      drawer: MyDrawer()
      
    );
  }
}

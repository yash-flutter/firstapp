import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    home:MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Awesome App"),),
      body: Center(
        child:Container(
          color: Colors.teal,
          child: Text("Hii Flutter",),
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color:Colors.red,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors :[Colors.yellow,Colors.pink]),
            
            )
          ),
      )
    );
  }
}
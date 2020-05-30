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
      body:Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
          color: Colors.green,
            width: 100,
            height:100,
            
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            ),
            Container(
          color: Colors.yellow,
            width: 100,
            height:100,
            
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            ),
            Container(
          color: Colors.red,
            width: 100,
            height:100,
            
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            ),
          ],
        ),
      ),
      
    );
  }
}
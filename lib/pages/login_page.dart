import 'package:firstapp/bg-image.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page"),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Stack(
            fit: StackFit.expand,
              children: [
                            BgImage(),
                            Center(child: 
                            Card(child:Column(children: [
                                  Form(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(children: [
                                        TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Enter UserName",
                                            labelText: "UserName",
                                          ),
                                        ),
                                        TextFormField(
                                          decoration: InputDecoration(
                                            hintText: "Enter Password",
                                            labelText: "Password",
                                          ),
                                        )
                                      ],),
                                    ),
                                  ),
                                  RaisedButton(onPressed: (){
                                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));
                                  },
                                    child: Text("Sign In"),
                                    color: Colors.blueAccent,
                                    )
                                ],)
                              ),)
          ],)
        ),
      )
    );
  }
}
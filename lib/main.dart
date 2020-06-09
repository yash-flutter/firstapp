import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:firstapp/pages/login_page.dart';

void main(){
  runApp(MaterialApp(
    title: "Awesome App",
    theme: ThemeData(primarySwatch: Colors.cyan),
    debugShowCheckedModeBanner: false,
    home:LoginPage()
    )
  );
}

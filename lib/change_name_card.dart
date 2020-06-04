import 'package:flutter/material.dart';

import 'bg-image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.mytext,
    @required TextEditingController name,
  }) : _name = name, super(key: key);

  final String mytext;
  final TextEditingController _name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget> [
        BgImage(),
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
      
      ],);
  }
}
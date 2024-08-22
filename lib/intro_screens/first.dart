import 'dart:ui';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const textValue = "Get money with just a tap on the phone. Just register, login and all is done.";
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blueAccent,
              Colors.blue,
              Colors.lightBlue
            ]
          )
        ),
        child: Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(
                (MediaQuery.of(context).size.width) * 0.5),
            child: Image(
              image: const AssetImage("assets/static/2.jpg"),
              height: ((MediaQuery.of(context).size.width) * 0.7),
            ),
          ),
          const SizedBox(height: 20.0),
          const Center(
            child: Text(textValue, style: TextStyle(
              fontFamily: "HeyComic",
              fontSize: 20.0
            )),
          )
        ]),
      ),
    );
  }
}

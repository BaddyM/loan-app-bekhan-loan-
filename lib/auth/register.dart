import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});
  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  var brand_name = "Bekhan Extra Cash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body:Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Colors.teal,
                    Colors.tealAccent
                  ]
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60.0),
                      child: Image.asset(
                        "assets/icon.png",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text("$brand_name",style: const TextStyle(
                      fontFamily:"Roboto",
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                            color: Colors.teal,
                            blurRadius: 10,
                            offset: Offset(0,3)
                        )
                      ]
                  ),)
                ],
              ),
              const SizedBox(height: 20.0,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0
                  ),
                ),
              ),
              const SizedBox(height: 15.0,),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: Offset(0, 2)
                        )
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      )
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 50.0,),
                          TextField(
                            cursorColor: Colors.teal,
                            maxLength: 9,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Enter Mobile Number",
                              filled: true,
                              fillColor: Color.fromRGBO(128, 150, 128, 0.4),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              prefixText: "+256",
                              prefixStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                          const SizedBox(height:20.0),
                          TextField(
                            cursorColor: Colors.teal,
                            maxLength: 4,
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            obscuringCharacter: "*",
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                                hintText: "Enter PIN",
                                filled: true,
                                fillColor: Color.fromRGBO(128, 150, 128, 0.4),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.pushReplacementNamed(context, "/");
                                },
                                child: const Text("Login",
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),),
                              ),
                            ],
                          ),
                          const SizedBox(height:20.0),
                          Container(
                            width: double.infinity,
                            height: ((MediaQuery.of(context).size.width) * 0.13),
                            margin: EdgeInsets.symmetric(horizontal: (MediaQuery.of(context).size.width) * 0.15),
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: GestureDetector(
                              onTap: (){},
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4.0,),
                                  Text("Create",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontFamily: "Roboto"
                                    ),),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loan_app/pages/home.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  var brand_name = "Bekhan Extra Cash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.teal, Colors.tealAccent])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60.0),
                      child: Image.asset(
                        "assets/icon.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    brand_name,
                    style: const TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                              color: Colors.teal,
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.center,
                child: const Icon(Icons.lock, size: 40.0),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: Offset(0, 2))
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      )),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.tealAccent,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.teal,
                                      offset: Offset(0, 1),
                                      spreadRadius: 1,
                                      blurRadius: 5)
                                ]),
                            child: const TextField(
                              obscureText: true,
                              obscuringCharacter: "*",
                              keyboardAppearance: Brightness.light,
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.black,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                hintText: "Enter PIN",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, "/forgotpass");
                                },
                                child: const Text(
                                  "Forgot Password",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, "/register");
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          GestureDetector(
                            onTap: () {
                              Map<String, dynamic> data = {
                                "name": "Arnold",
                                "age": 23,
                                "cardno":123456789
                              };

                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HomePage(data: data)));
                            },
                            child: Container(
                              width: double.infinity,
                              height:
                                  ((MediaQuery.of(context).size.width) * 0.13),
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      (MediaQuery.of(context).size.width) *
                                          0.15),
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.door_back_door_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "Enter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontFamily: "Roboto"),
                                  ),
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
        ));
  }
}

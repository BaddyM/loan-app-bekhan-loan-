import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:loan_app/auth/login.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const textValue = "Receive money in the shortest period of time.";
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.green,
                  Colors.lightGreen,
                  Colors.lightGreenAccent
                ]
            )
        ),
        child: Column(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(
                (MediaQuery.of(context).size.width) * 0.5),
            child: Image(
              image: const AssetImage("assets/static/5.jpg"),
              height: ((MediaQuery.of(context).size.width) * 0.7),
            ),
          ),
          const SizedBox(height: 20.0),
          const Center(
            child: Text(textValue, style: TextStyle(
                fontFamily: "HeyComic",
                fontSize: 20.0
            )),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
          GestureDetector(
            onTap: (){
              Get.to(
                  () => const LoginUser(),
                transition: Transition.size,
                duration: const Duration(seconds: 1)
              );
            },
            child: SizedBox(
              height: 50.0,
              width: 50.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: Colors.orange,
                    width: 2.0
                  )
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.chevron_right, color: Colors.black,)
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

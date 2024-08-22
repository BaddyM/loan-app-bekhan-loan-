import 'package:flutter/material.dart';
import 'package:loan_app/intro_screens/first.dart';
import 'package:loan_app/intro_screens/second.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          PageView(
            controller: _controller,
            children: <Widget>[
              FirstScreen(),
              SecondScreen()
            ],
          ),
          Container(
            alignment: const Alignment(0,0.9),
              child: SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                effect: const ExpandingDotsEffect(
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  dotColor: Colors.yellow,
                  activeDotColor: Colors.tealAccent
                ),
              )
          )
        ]
      ),
    );
  }
}

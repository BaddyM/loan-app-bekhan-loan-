import 'package:flutter/material.dart';
import './app_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:loan_app/pages/home_home.dart';

class HomePage extends StatefulWidget {
  final data;

  const HomePage({super.key, this.data});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    List<String> headerTitle = ['Home', 'Loans', 'Settings'];
    var brandName = "Bekhan Extra Cash";
    var user_data = widget.data;
    List bodyWidgets = <Widget>[
      HomeWidget(userData: user_data, brandName: brandName),
      AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 300.0,
        height: 300.0,
        color: Colors.red,
        child: const Text("Red"),
      ),
      AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: 300.0,
        height: 300.0,
        color: Colors.blue,
        child: const Text("Blue"),
      ),
    ];
    return Scaffold(
      appBar: LoanAppBar(
        headerTitle: headerTitle[_currentIndex],
        brandName: brandName,
      ),
      body: Center(
        child: bodyWidgets[_currentIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.teal,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.teal,
        items: const <Widget>[
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
            color: Colors.white,
          ),
        ],
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

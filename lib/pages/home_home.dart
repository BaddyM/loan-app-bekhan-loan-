import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  final userData;
  final brandName;

  const HomeWidget({super.key, this.userData, this.brandName});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = (MediaQuery.of(context).size.height);
    var deivceWidth = (MediaQuery.of(context).size.height);
    var user_name = widget.userData['name'];
    var cardno = widget.userData['cardno'];

    return ListView(
      children: <Widget>[
        Container(
          height: (deviceHeight * 0.25),
          margin: EdgeInsets.all((deviceHeight * 0.02)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(deivceWidth * 0.02),
              color: Colors.black87,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 6)
              ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5.0),
                    child: Text(
                      widget.brandName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Colors.white,
                thickness: 0.5,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: const Image(
                          image: AssetImage("assets/static/sim_card.png"),
                          width: 30.0,
                          height: 30.0),
                    ),
                    Row(
                      children: [
                        const Text(
                          "NAME:",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          user_name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20.0),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Card No.",
                      style: TextStyle(
                          color: Colors.white,
                      fontSize: 20.0
                      ),
                    ),
                  ),
                  Text("$cardno",
                  style: const TextStyle(
                    color: Colors.yellowAccent,
                    fontSize: 20.0,
                    letterSpacing: 2.0
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Text("Loan Limit: ",
                  style: TextStyle(
                    color:Colors.white
                  ),)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

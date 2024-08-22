import 'package:flutter/material.dart';

class LoanAppBar extends StatelessWidget implements PreferredSizeWidget{
  final headerTitle;
  final brandName;
  const LoanAppBar({super.key, this.headerTitle, this.brandName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading:const SizedBox(width: double.maxFinite,),
      backgroundColor: Colors.teal[600],
      title: Text(
        headerTitle,
        style: const TextStyle(color: Colors.white, fontFamily: "HeyComic"),
      ),
      centerTitle: true,
      elevation: 5,
      shadowColor: Colors.teal[900],
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_add_outlined, color: Colors.white))
      ],
    );
  }
  //Implement preferred sized widget
  @override
  Size get preferredSize => const Size(
    double.infinity,
    60.0
  );
}

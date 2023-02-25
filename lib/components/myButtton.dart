// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key,required this.onTap, required this.textbutton});
  final   Function()? onTap;
  final String textbutton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin:  EdgeInsets.symmetric(horizontal: 25),
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 5),
            color: Colors.grey.shade400,
             borderRadius: BorderRadius.circular(5)
             ),
        child: Text(
          textbutton,
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 25,),
        ),
      ),
    );
  }
}

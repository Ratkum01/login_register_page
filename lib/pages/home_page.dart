// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:register_google_ap_ratkum/components/myButtton.dart';

import '../style/textstyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 5)),
            child: Icon(
              Icons.lock_open_rounded,
              size: 150,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'ҚОШ КЕЛДІҢ ДОСТЫМ',
            style: AppStyles.styleone,
          ),
          MyButton(onTap: signUserOut, textbutton: 'Шығу',)
        ],
      ),
    );
  }

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
}

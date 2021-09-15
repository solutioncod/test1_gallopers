import 'package:flutter/material.dart';

class Buttonwithtext {
  final String btntext;
  Buttonwithtext({required this.btntext});

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
          child: Text(
        btntext,
      )),
    );
  }
}

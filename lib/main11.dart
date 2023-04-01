import 'dart:async';

import 'package:flutter/material.dart';

class Spashscreen extends StatefulWidget {
  @override
  State<Spashscreen> createState() => _SpashscreenState();
}

class _SpashscreenState extends State<Spashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'ali masood',
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
    ));
  }
}

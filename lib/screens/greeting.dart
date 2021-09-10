import 'dart:async';
import 'package:clone_app/screens/wrapper.dart';
import 'package:flutter/material.dart';

class Greeting extends StatefulWidget {
  @override
  _GreetingState createState() => new _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 5), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
          child: Text(
        'CLONE APP COFFEE',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      )),
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Home(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new wrapper();
  }
}

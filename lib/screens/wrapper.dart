import 'package:clone_app/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';

class wrapper extends StatefulWidget {
  @override
  _wrapperState createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  @override
  Widget build(BuildContext context) {
    //returs either Home or Authenticate widget
    return Authenticate();
  }
}

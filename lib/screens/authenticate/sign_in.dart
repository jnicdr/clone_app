import 'package:clone_app/screens/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'COFFEE WEY CHOKE',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 130, vertical: 15))),
              child: Text('Sign in Anon'),
              onPressed: () async {
                dynamic result = await _auth.signInAnon();
                if (result == null) {
                  print('error signing in');
                } else {
                  print('signed in');
                  print(result);
                }
              },
            ),
          )
        ],
      )),
    );
  }
}

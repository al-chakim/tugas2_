import 'package:flutter/material.dart';

void main() => runApp(MainUI());

class MainUI extends StatelessWidget {
  const MainUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 250,
                  //width: 50,
                )
              ],
            )
          ],
        )
      ),
    );
  }
}
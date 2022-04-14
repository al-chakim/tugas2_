import 'package:flutter/material.dart';
import 'package:mainui/theme.dart';

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
            SizedBox(height: 40,),
            Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  height: 250,
                  //width: 50,
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 35)),
                Text(
                  'Login',
                  style: satu,
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.only(
                left: 30,
                right: 30
              ),
              child: Column(
                children: [
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    autofocus: false,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                      labelText: 'Password',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20, right: 20)),
                TextButton(
                  onPressed: (){}, 
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: hitam
                    ),
                  )
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
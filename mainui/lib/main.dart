import 'package:flutter/material.dart';
import 'package:mainui/theme.dart';

void main() => runApp(MainUI());

class MainUI extends StatelessWidget {
  const MainUI({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
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
      backgroundColor: Color.fromARGB(255, 253, 221, 221),
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
            SizedBox(height: 20,),
            Column(
              children: [
                FloatingActionButton.extended(
                  backgroundColor: oren,
                  foregroundColor: putih,
                  onPressed: () {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context){
                          return homePage();
                        }
                      )
                    );
                  },
                  label: Text(
                    '                           Login                           ',
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t Have an Account? ',
                      style: TextStyle(
                        fontSize: 13
                      ),
                    ),
                    // SizedBox(width: -2,),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 13,
                          color: oren,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 221, 221),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                top: 10,
                left: 15,
                right: 15,
                bottom: 20
              ),
              decoration: BoxDecoration(
                color: oren,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {} , 
                        icon: Icon(Icons.search, color: putih,)
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.account_circle, color: putih,)
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/sam1.png',
                        width: 280,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
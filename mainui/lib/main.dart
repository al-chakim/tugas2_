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
      backgroundColor: oren1,
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
      backgroundColor: oren1,
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
                        onPressed: () {
                          Navigator.pop(context);
                        } , 
                        icon: Icon(Icons.search, color: putih,)
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.5,
                    indent: 10,
                    endIndent: 10,
                    height: 1,
                    color: putih,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('S', style: tiga,),
                                Text('H', style: tiga,),
                                Text('O', style: tiga,),
                                Text('G', style: tiga,),
                                Text('u', style: tiga,),
                                Text('N', style: tiga, )
                              ],
                            ),
                            SizedBox(width: 40,),
                            Image.asset(
                              'assets/sam1.png',
                              width: 280,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 150,
                        //padding: EdgeInsets.only(left: 20, top: 6),
                        margin: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: oren1
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'Booking',
                                style: empat,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 150,
                        //padding: EdgeInsets.only(left: 20, top: 6),
                        margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: oren1
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'PreOrder',
                                style: empat,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text('List Movie', style: enam,)
                ],
              ),
            ),
            SizedBox(height: 0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Image.asset('assets/fig1.png', height: 330,),
                  SizedBox(width: 10,),
                  Image.asset('assets/fig2.png', height: 330,),
                  SizedBox(width: 10,),
                  Image.asset('assets/fig3.png', height: 330,),
                  SizedBox(width: 10,),
                  Image.asset('assets/fig4.png', height: 330,),
                  SizedBox(width: 10,),
                  Image.asset('assets/fig5.png', height: 330,),
                  //SizedBox(width: 10,),
                ],
              ),
            ),
            SizedBox(height: 50,),
            // SizedBox(height: 10,),
            // Padding(
            //   padding: EdgeInsets.only(left: 15),
            //   child: Row(
            //     children: [
            //       Text('Alhamdulillah bisa')
            //     ],
            //   ),
            // ),
            // SizedBox(height: 20,)
          ],
        )
      ),
      bottomNavigationBar: BottomAppBar(
        color: oren,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.home, 
                color: putih,
                size: 30,
              )
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.my_library_books_outlined, 
                color: putih,
                size: 30,
              )
            ),
            IconButton(
              onPressed: (){}, 
              icon: Icon(
                Icons.notifications_none_outlined, 
                color: putih,
                size: 30,
              )
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context){
                      return profile();
                    }
                  )
                );
              }, 
              icon: Icon(
                Icons.account_circle_outlined, 
                color: putih,
                size: 30,
              )
            )
          ],
        ),
      ),
    );
  }
}

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: oren1,
      appBar: AppBar(
        backgroundColor: oren,
        title: Text('My Profile'),
        actions: [
          // IconButton(
          //   onPressed: (){}, 
          //   icon: Icon(Icons.settings)
          // )
        ],
      ),

      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20,),
            ListTile(
              title: Text('Chakim', style: empat,),
              subtitle: Text('Ter - Counter'),
              leading: Image.asset(
                'assets/sam4.png', 
                height: 50,
              ),
              trailing: IconButton(
                onPressed: () {
                // Navigator.push(
                //   context, MaterialPageRoute(
                //     builder: (context){
                //       return profile();
                //     }
                //   )
                // );
              }, 
              icon: Icon(Icons.qr_code_rounded, color: oren,)
              )
            ),
            Divider(
              color: Colors.black54,
              thickness: 1,
            ),
            ListTile(
              title: Text('Account', style: lima,),
              subtitle: Text(
                'Privasy and security', 
                style: TextStyle(
                  fontSize: 13
                ),
              ),
              leading: Icon(Icons.key),
              onTap: (){},
            ),
            ListTile(
              title: Text('Chat', style: lima,),
              subtitle: Text(
                'Theme, wallpaper, chat history', 
                style: TextStyle(
                  fontSize: 13
                ),
              ),
              leading: Icon(Icons.chat),
              onTap: (){},
            ),
            ListTile(
              title: Text('Notification', style: lima,),
              subtitle: Text(
                'Messages, groups & call ringtones', 
                style: TextStyle(
                  fontSize: 13
                ),
              ),
              leading: Icon(Icons.notifications),
              onTap: (){},
            ),
            ListTile(
              title: Text('Storage dan data', style: lima,),
              subtitle: Text(
                'network usage, auto download', 
                style: TextStyle(
                  fontSize: 13
                ),
              ),
              leading: Icon(Icons.circle_outlined),
              onTap: (){},
            ),
            ListTile(
              title: Text('Help', style: lima,),
              subtitle: Text(
                'help center, contact us, privacy policy', 
                style: TextStyle(
                  fontSize: 13
                ),
              ),
              leading: Icon(Icons.help_outline),
              onTap: (){},
            ),
            ListTile(
              title: Text('Add friends', style: lima,),
              // subtitle: Text(
              //   'help center, contact us, privacy policy', 
              //   style: TextStyle(
              //     fontSize: 13
              //   ),
              // ),
              leading: Icon(Icons.supervisor_account),
              onTap: (){},
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                Text(
                  'from', 
                  style: TextStyle(
                    fontWeight: FontWeight.w300
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook, 
                  size: 18,
                ),
                Text(
                  'Facebook',
                  style: lima,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
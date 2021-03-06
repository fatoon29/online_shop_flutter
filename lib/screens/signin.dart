import 'package:flutter/material.dart';

import '../widget/customAppBar.dart';
import 'compte.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: Color(0xFFE7E8E9),
                    backgroundImage: AssetImage(
                      'assets/images/avatar.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CocoGoose',
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 300,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xFFBD896A),
                        ),
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                          color: Color(0xFFBD896A),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 280,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  width: 300,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: Icon(
                          Icons.lock_outline_rounded,
                          color: Color(0xFFBD896A),
                        ),
                      ),
                      Text(
                        '*****************',
                        style: TextStyle(
                          color: Color(0xFFBD896A),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 280,
                  child: Divider(
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 280,
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        size: 18,
                        color: Colors.grey[400],
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[400],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Color(0xFFBD896A))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Compte();
                        },
                      ),
                    );
                  },
                  color: Color(0xFFBD896A),
                  textColor: Colors.white,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'CocoGoose',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 300,
                  child: Image.asset('assets/images/fb.png'),
                ),
                Container(
                  width: 300,
                  child: Image.asset('assets/images/google.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

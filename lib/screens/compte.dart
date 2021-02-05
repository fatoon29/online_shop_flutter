import 'package:flutter/material.dart';

import '../widget/customAppBar.dart';
import 'signin.dart';

class Compte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome, Fatoon le BG',
                style: TextStyle(
                  fontFamily: 'CocoGoose',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Color(0xFFE7E8E9),
                  backgroundImage: AssetImage(
                    'assets/images/moi.png',
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Account detail',
                style: TextStyle(
                  fontFamily: 'CocoGoose',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: Color(0xFFBD896A),
                ),
              ),
              Text(
                'Account create on 03/02/2021',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Order waiting for payment : 2 \n \nOrder valid : 5 \n\nOrder processing: 1",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 800,
                height: 120,
                child: Card(
                  color: Color(0xFFE7E8E9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Most viewed product :',
                          style: TextStyle(
                            fontFamily: 'CocoGoose',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Image.asset('assets/images/1.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'WARNING : You still have a coupon to use before 15/03/2021',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 40.0,
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
                        return Signin();
                      },
                    ),
                  );
                },
                color: Color(0xFFBD896A),
                textColor: Colors.white,
                child: Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'CocoGoose',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

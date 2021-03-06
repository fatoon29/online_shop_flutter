import 'package:flutter/material.dart';

import '../widget/customAppBar.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Text(
                'My cart',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CocoGoose',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 180,
                child: Card(
                  color: Color(0xFFE7E8E9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/1.png'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          'pikachu sweatshirt \n 45.95€ \n Taille : XL',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text('- 1 + '),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.delete_outline_rounded,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 180,
                child: Card(
                  color: Color(0xFFE7E8E9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/2.png'),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          'pikachu sweatshirt \n 35.95€ \n Taille : S',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text('- 2 + '),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.delete_outline_rounded,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontFamily: 'CocoGoose',
                      ),
                    ),
                    Text(
                      '117,85 €',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              ButtonTheme(
                minWidth: 400.0,
                height: 65.0,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFFE7E8E9),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      fontFamily: 'CocoGoose',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50,
                child: Image.asset(
                  'assets/images/icon_paiement.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

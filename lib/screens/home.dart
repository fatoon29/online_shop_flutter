import 'package:flutter/material.dart';

import '../widget/customAppBar.dart';
import '../widget/productWidget.dart';

class Home extends StatelessWidget {
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
                'The most popular clothes today',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'CocoGoose',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                color: Colors.grey[100],
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        ),
                      ),
                      Text(
                        'Search...',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ProductWidget(
                imageOne: 'assets/images/1.png',
                descriptionOne: 'Pikachu Sweatchirt',
                priceOne: '45.95€',
                imageTwo: 'assets/images/2.png',
                descriptionTwo: 'DragonBall Sweatchirt',
                priceTwo: '35.95€',
                link: Home(),
              ),
              ProductWidget(
                imageOne: 'assets/images/3.png',
                descriptionOne: 'Minion Sweatchirt',
                priceOne: '45.95€',
                imageTwo: 'assets/images/4.png',
                descriptionTwo: 'Assassin\'s creed Sweatchirt',
                priceTwo: '35.95€',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

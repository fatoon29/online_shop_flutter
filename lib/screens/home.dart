import 'package:flutter/material.dart';

import 'categories.dart';
import 'cart.dart';
import 'signin.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset('assets/images/moi.png'),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Signin();
                },
              ),
            ),
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.tune_rounded),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Categories();
                  },
                ),
              );
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Cart();
                      },
                    ),
                  );
                },
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, right: 4),
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: Color(0xFFBD896A),
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          child: Stack(
                            children: [
                              Card(
                                color: Color(0xFFE7E8E9),
                                child: Image.asset(
                                  'assets/images/1.png',
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 0.0,
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.white,
                                    child: Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 18,
                                    ),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Pikachu Sweatchirt',
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '45.95€',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 240,
                        child: Stack(
                          children: [
                            Card(
                              color: Color(0xFFE7E8E9),
                              child: Image.asset(
                                'assets/images/2.png',
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              elevation: 0.0,
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: Icon(
                                    Icons.favorite,
                                    size: 18,
                                    color: Color(0xFFBD896A),
                                  ),
                                  shape: CircleBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'DragonBall Sweatchirt',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '35.95€',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5.0,
                      right: 10.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          child: Stack(
                            children: [
                              Card(
                                color: Color(0xFFE7E8E9),
                                child: Image.asset(
                                  'assets/images/3.png',
                                  fit: BoxFit.cover,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                elevation: 0.0,
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.white,
                                    child: Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 18,
                                    ),
                                    shape: CircleBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Pikachu Sweatchirt',
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '45.95€',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 240,
                        child: Stack(
                          children: [
                            Card(
                              color: Color(0xFFE7E8E9),
                              child: Image.asset(
                                'assets/images/4.png',
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              elevation: 0.0,
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: MaterialButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: Icon(
                                    Icons.favorite_outline_rounded,
                                    size: 18,
                                  ),
                                  shape: CircleBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'DragonBall Sweatchirt',
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '35.95€',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

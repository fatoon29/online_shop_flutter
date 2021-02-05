import 'package:flutter/material.dart';

import '../widget/customAppBar.dart';
import 'cart.dart';

class Produit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/images/9.jpg',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 0,
                  left: 15,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Corduray cap',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'CocoGoose',
                      ),
                    ),
                    Spacer(
                      flex: 15,
                    ),
                    Text(
                      '34.00€',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  'A corduray cap will perfectly comlement your image. This hat is suitable for both the classic style and for casual style.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Color',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CocoGoose',
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.brown[100],
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.brown[300],
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.brown,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Size',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CocoGoose',
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.grey[300],
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: const Icon(Icons.circle),
                      color: Colors.grey[300],
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: Center(
                  child: MaterialButton(
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
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.shopping_bag_rounded,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        Text(
                          '  Add to cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
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

// IconButton(
//                             iconSize: 30.0,
//                             icon: const Icon(Icons.shopping_bag),
//                             color: Colors.grey,
//                             onPressed: () {},
//                             tooltip: MaterialLocalizations.of(context)
//                                 .openAppDrawerTooltip,
//                           ),

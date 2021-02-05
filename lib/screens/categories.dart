import 'package:flutter/material.dart';

import '../widget/categorieWidget.dart';
import 'women-clothes.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'CocoGoose',
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              CategorieWidget(
                text: 'Women',
                image: 'assets/images/femme.png',
                link: WomenClothes(),
              ),
              CategorieWidget(
                text: 'Men',
                image: 'assets/images/homme.png',
                link: WomenClothes(),
              ),
              CategorieWidget(
                text: 'Kids',
                image: 'assets/images/enfant.png',
                link: WomenClothes(),
              ),
              CategorieWidget(
                text: 'New Collection',
                image: 'assets/images/new.png',
                link: WomenClothes(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

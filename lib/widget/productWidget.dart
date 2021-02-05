import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final imageOne;
  final descriptionOne;
  final priceOne;
  final imageTwo;
  final descriptionTwo;
  final priceTwo;
  final link;

  ProductWidget(
      {Key key,
      @required this.imageOne,
      @required this.descriptionOne,
      @required this.priceOne,
      @required this.imageTwo,
      @required this.descriptionTwo,
      @required this.priceTwo,
      this.link});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        this.imageOne,
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
                this.descriptionOne,
                textAlign: TextAlign.left,
              ),
              Text(
                this.priceOne,
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
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return this.link;
                    },
                  ),
                );
              },
              child: Container(
                height: 240,
                child: Stack(
                  children: [
                    Card(
                      color: Color(0xFFE7E8E9),
                      child: Image.asset(
                        this.imageTwo,
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
            ),
            Text(
              this.descriptionTwo,
              textAlign: TextAlign.left,
            ),
            Text(
              this.priceTwo,
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

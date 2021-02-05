import 'package:flutter/material.dart';

class CategorieWidget extends StatelessWidget {
  final text;
  final image;
  final link;

  CategorieWidget({
    Key key,
    @required this.text,
    @required this.image,
    this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
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
          height: 180,
          child: Card(
            color: Color(0xFFE7E8E9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    this.text,
                    style: TextStyle(
                      fontFamily: 'CocoGoose',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset(this.image),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

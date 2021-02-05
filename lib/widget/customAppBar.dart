import 'package:flutter/material.dart';

import '../screens/categories.dart';
import '../screens/cart.dart';
import '../screens/signin.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}

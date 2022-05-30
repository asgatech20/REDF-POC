import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:redf/constants/app_colors.dart';
import "dart:math";
import "package:flutter/material.dart";

import 'dropdownlist.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ConstrainedSliverWidth(child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/usersmall.png',
                    scale: 0.8),
                Container(
                  margin: const EdgeInsets.only(left: 10,
                      right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: const DefaultTextStyle(
                            style: TextStyle(fontSize: 18),
                            child: Text('Hello, UserData.name'),
                          )),
                      Container(
                          child: const DefaultTextStyle(
                            style: TextStyle(fontSize: 12),
                            child: Text('Thu. 25 Sep, 2022'),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Image.asset('assets/notifications.png'),
            ),
          ],
        ),
            maxWidth: 100)
    );
  }
}

class ConstrainedSliverWidth extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  const ConstrainedSliverWidth({
    Key? key,
    required this.child,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var padding = (size.width - maxWidth) / 2;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: max(padding, 0)),
      child: child,
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_chat_app/common/styles.dart';

class OnlineIndicator extends StatelessWidget {
  final double width;
  final double height;

  const OnlineIndicator({Key key, this.width = 14.0, this.height = 14.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:
          BoxDecoration(color: background, shape: BoxShape.circle, boxShadow: [
        BoxShadow(
            color: darkShadow,
            blurRadius: 2.0,
            spreadRadius: 0,
            offset: Offset(1, 1))
      ]),
      child: Container(
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: onlineIndicator,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

import 'package:my_chat_app/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:my_chat_app/widgets/online_indicator.dart';

class Avatar extends StatelessWidget {
  final double width;
  final double height;
  final String url;
  final bool isOnline;

  const Avatar(
      {Key key,
      this.width = 60.0,
      this.height = 60.0,
      this.url,
      this.isOnline = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: background,
        boxShadow: softShadows,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: new NetworkImage(url))),
          ),
          isOnline
              ? Positioned(
                  child: OnlineIndicator(
                    width: 0.26 * width,
                    height: 0.26 * height,
                  ),
                  right: 2,
                  bottom: 2,
                )
              : SizedBox()
        ],
      ),
    );
  }
}

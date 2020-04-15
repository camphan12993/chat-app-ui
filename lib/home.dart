import 'package:my_chat_app/chat_screen.dart';
import 'package:my_chat_app/common/styles.dart';
import 'package:my_chat_app/models/message.dart';
import 'package:my_chat_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

import 'models/user_model.dart';

class Home extends StatelessWidget {
  Widget buildUserAvatar(User user) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 6.0),
      child: Column(
        children: <Widget>[
          Avatar(
            url: user.imgUrl,
            isOnline: user.isOnline,
          ),
          SizedBox(
            height: 4.0,
          ),
          Container(
            width: 64.0,
            child: Text(
              user.name.split(' ')[0],
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: textColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget buildRecentChat(Message message, BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChatScreen(
              sender: message.sender,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Row(
          children: [
            Avatar(
              url: message.sender.imgUrl,
              isOnline: message.sender.isOnline,
            ),
            SizedBox(width: 8.0),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.sender.name,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2.0),
                Text(message.content,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: message.hasRead
                            ? textColor.withOpacity(.4)
                            : textColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400))
              ],
            )),
            SizedBox(width: 8.0),
            Text(
              formatTime('0' + message.time.hour.toString()) +
                  ':' +
                  formatTime('0' + message.time.minute.toString()),
              style:
                  TextStyle(color: textColor.withOpacity(.6), fontSize: 14.0),
            )
          ],
        ),
      ),
    );
  }

  String formatTime(String time) {
    return time.substring(time.length - 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: background,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Row(
                children: [
                  // avatar
                  Avatar(url: currentUser.imgUrl, width: 40.0, height: 40.0),
                  SizedBox(width: 10.0),
                  // name
                  Text(currentUser.name,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          boxShadow: softShadows,
                          color: background,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.camera_alt,
                        size: 16.0,
                        color: Theme.of(context).primaryColor,
                      ))
                ],
              ),
            ),
            // search box
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    color: background,
                    boxShadow: softShadowsInvert,
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                            boxShadow: softShadows,
                            color: background,
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.search,
                          size: 16.0,
                          color: Theme.of(context).primaryColor,
                        )),
                    SizedBox(width: 12.0),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: textColor, fontSize: 16.0),
                        decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle:
                                TextStyle(color: textColor.withOpacity(0.6)),
                            filled: false,
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 12.0)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // List User
            Container(
              height: 100.0,
              child: Center(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: favoriteUsers.length,
                    itemBuilder: (BuildContext ctx, int index) =>
                        buildUserAvatar(favoriteUsers[index])),
              ),
            ),

            // recents
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              itemCount: recentChats.length,
              itemBuilder: (BuildContext ctx, int index) =>
                  buildRecentChat(recentChats[index], context),
            ))
          ],
        ),
      ),
    ));
  }
}

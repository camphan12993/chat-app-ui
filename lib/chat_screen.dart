import 'package:my_chat_app/common/styles.dart';
import 'package:my_chat_app/models/message.dart';
import 'package:my_chat_app/models/user_model.dart';
import 'package:my_chat_app/widgets/avatar.dart';
import 'package:my_chat_app/widgets/button_icon.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final User sender;
  const ChatScreen({Key key, this.sender}) : super(key: key);
  buildChat(Message message, BuildContext context) {
    final bool isCurrentUser = message.sender.id == currentUser.id;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isCurrentUser
              ? Avatar(url: message.sender.imgUrl, width: 32.0, height: 32.0)
              : SizedBox(),
          SizedBox(width: 12.0),
          Expanded(
              child: Align(
            alignment: isCurrentUser ? Alignment.topLeft : Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                  minWidth: 50,
                  maxWidth: MediaQuery.of(context).size.width * 0.6),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: softShadows),
              child: Text(
                message.content,
                style: TextStyle(color: textColor),
              ),
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: background,
      child: Column(
        children: [
          // nav
          Container(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12.0, top: 26.0, bottom: 10.0),
            decoration: BoxDecoration(color: background, boxShadow: [
              BoxShadow(
                  color: darkShadow,
                  offset: Offset(0, 1),
                  blurRadius: 2.0,
                  spreadRadius: 2.0)
            ]),
            child: Row(
              children: [
                ButtonIcon(
                  icon: Icons.arrow_back,
                  action: () => Navigator.pop(context),
                ),
                SizedBox(width: 16.0),
                Avatar(
                  url: sender.imgUrl,
                  width: 40.0,
                  height: 40.0,
                  isOnline: sender.isOnline,
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sender.name,
                        style: TextStyle(
                            color: textColor, fontWeight: FontWeight.bold),
                      ),
                      Text(sender.isOnline ? 'Online' : 'Offline',
                          style: TextStyle(
                            color: textColor.withOpacity(.54),
                            fontSize: 14.0,
                          ))
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
                ButtonIcon(icon: Icons.phone),
                SizedBox(width: 10.0),
                ButtonIcon(icon: Icons.videocam),
                SizedBox(width: 10.0),
                ButtonIcon(icon: Icons.info),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                itemCount: messages.length,
                reverse: true,
                itemBuilder: (BuildContext context, index) =>
                    buildChat(messages[index], context)),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            decoration: BoxDecoration(color: background, boxShadow: [
              BoxShadow(
                  color: lightShadow,
                  offset: Offset(0, 0),
                  blurRadius: 6.0,
                  spreadRadius: 4.0)
            ]),
            child: Row(
              children: [
                ButtonIcon(icon: Icons.image),
                SizedBox(width: 10.0),
                ButtonIcon(icon: Icons.camera_alt),
                SizedBox(width: 10.0),
                ButtonIcon(icon: Icons.mic),
                SizedBox(width: 10.0),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: background,
                        boxShadow: softShadowsInvert,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: TextField(
                      style: TextStyle(color: textColor, fontSize: 16.0),
                      decoration: InputDecoration(
                          hintText: 'Aa',
                          hintStyle:
                              TextStyle(color: textColor.withOpacity(.6)),
                          filled: false,
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 8.0)),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                ButtonIcon(
                  icon: Icons.tag_faces,
                  borderRadius: 18,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

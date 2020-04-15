import 'package:my_chat_app/models/user_model.dart';

class Message {
  final String content;
  final DateTime time;
  final User sender;
  final bool hasRead;

  Message({this.content, this.time, this.sender, this.hasRead = true});
}

final List<Message> recentChats = [
  Message(
      content: 'hi! how are you! Im fine dfgfgfggg dfgdfgd  dfgdfgdfg',
      time: DateTime.now(),
      sender: u1,
      hasRead: false),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u2),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: u3,
      hasRead: false),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u4),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: u5,
      hasRead: false),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u6),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u7),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u8),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u9),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u10),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u1),
  Message(content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u2)
];

final List<Message> messages = [
  Message(
    content: 'hi! how are you! Im fine dfgfgfggg dfgdfgd  dfgdfgdfg',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u2),
  Message(
    content: 'hi! how are you! Im fine',
    time: DateTime.now(),
    sender: u1,
  ),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u4),
  Message(
    content: 'hi! how are you! Im fine',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: currentUser),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u1),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: currentUser),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u1),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: currentUser),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u1),
  Message(content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u1)
];

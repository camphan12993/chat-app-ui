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
      content:
          'Duis anim officia non nisi occaecat quis dolore magna duis deserunt proident.',
      time: DateTime.now(),
      sender: u1,
      hasRead: false),
  Message(
      content:
          'Esse laboris dolore eiusmod magna ea magna proident occaecat ullamco consectetur dolor officia.',
      time: DateTime.now(),
      sender: u2),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: u3,
      hasRead: false),
  Message(
      content: 'Pariatur adipisicing ullamco deserunt elit.',
      time: DateTime.now(),
      sender: u4),
  Message(
      content: 'hi! how are you! Im fine',
      time: DateTime.now(),
      sender: u5,
      hasRead: false),
  Message(
      content:
          'Proident fugiat exercitation nostrud magna Lorem cillum laboris pariatur.',
      time: DateTime.now(),
      sender: u6),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u7),
  Message(content: 'Deserunt proident', time: DateTime.now(), sender: u8),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u9),
  Message(
      content:
          'Officia non aliquip aute proident mollit in anim consectetur laboris.',
      time: DateTime.now(),
      sender: u10),
  Message(
      content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u1),
  Message(content: 'hi! how are you! Im fine', time: DateTime.now(), sender: u2)
];

final List<Message> messages = [
  Message(
    content:
        'Dolor tempor qui occaecat nisi laboris sint velit anim cupidatat.',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(content: 'Nulla sit consectetur', time: DateTime.now(), sender: u2),
  Message(
    content: 'Do ea sint aliqua dolor.',
    time: DateTime.now(),
    sender: u1,
  ),
  Message(
      content:
          'Excepteur do ea pariatur amet nostrud cillum voluptate exercitation irure in aute esse et laborum.',
      time: DateTime.now(),
      sender: u4),
  Message(
    content: 'Voluptate laboris anim amet excepteur id incididunt et nulla.',
    time: DateTime.now(),
    sender: currentUser,
  ),
  Message(
      content: 'Officia id est exercitation officia officia.',
      time: DateTime.now(),
      sender: currentUser),
  Message(
      content: 'Fugiat consequat eu cillum voluptate Lorem culpa non nostrud.',
      time: DateTime.now(),
      sender: u1),
  Message(
      content:
          'Sit tempor excepteur aliquip ad nostrud ipsum incididunt sint consectetur ad irure minim elit.',
      time: DateTime.now(),
      sender: currentUser),
  Message(
      content: 'Est ex sint dolor Lorem.', time: DateTime.now(), sender: u1),
  Message(
      content: 'Laborum aliquip ad dolor anim nulla dolore quis aliquip ex.',
      time: DateTime.now(),
      sender: currentUser),
  Message(
      content:
          'Mollit tempor excepteur Lorem consequat occaecat esse labore quis ea dolor exercitation.',
      time: DateTime.now(),
      sender: u1),
  Message(
      content:
          'Incididunt aliquip exercitation aliquip officia voluptate consectetur veniam.',
      time: DateTime.now(),
      sender: u1)
];

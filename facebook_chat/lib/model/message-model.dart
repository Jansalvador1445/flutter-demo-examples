import 'package:facebook_chat/model/user-model.dart';

class Message {
  final String content;
  final DateTime time;
  final User sender;
  final bool hasRead;

  Message({
    this.content,
    this.time,
    this.sender,
    this.hasRead = true,
  });
}

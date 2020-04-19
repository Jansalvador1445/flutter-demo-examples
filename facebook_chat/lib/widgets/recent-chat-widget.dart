import 'package:facebook_chat/common/colors-common.dart';
import 'package:facebook_chat/model/message-model.dart';
import 'package:facebook_chat/screen/facebook-chat-message.dart';
import 'package:facebook_chat/widgets/avatar-widgets.dart';
import 'package:flutter/material.dart';

Widget RecentChat(Message message, BuildContext context) {
  String formatTime(String time) {
    return time.substring(time.length - 2);
  }

  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => FacebookChatMessage(
            sender: message.sender,
          ),
        ),
      );
    },
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: <Widget>[
          Avatar(
            url: message.sender.imgUrl,
            isOnline: message.sender.isOnline,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  message.sender.name,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 2.0),
                Text(
                  message.content,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color:
                        message.hasRead ? textColor.withOpacity(.4) : textColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 8),
          Text(
            formatTime('0' + message.time.hour.toString()) +
                ':' +
                formatTime('0' + message.time.minute.toString()),
            style: TextStyle(
              color: textColor.withOpacity(.6),
              fontSize: 14.0,
            ),
          )
        ],
      ),
    ),
  );
}

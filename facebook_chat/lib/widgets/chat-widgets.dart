import 'package:facebook_chat/common/box-colors-common.dart';
import 'package:facebook_chat/common/colors-common.dart';
import 'package:facebook_chat/details(Input)/chat-user-details.dart';
import 'package:facebook_chat/model/message-model.dart';
import 'package:facebook_chat/widgets/avatar-widgets.dart';
import 'package:flutter/material.dart';

Widget ChatMessage(Message message, BuildContext context) {
  final bool isCurrentUser = message.sender.id == currentUser.id;

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 6.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        isCurrentUser
            ? Avatar(
                url:
                    "https://m.media-amazon.com/images/M/MV5BZDRhYzlhYmQtYjlkNS00Y2ExLTlkMTEtZGZkNjRkYjdjNzBjXkEyXkFqcGdeQXVyNjc5NjU3OTI@._V1_.jpg", //message.sender.imgUrl,
                width: 32.0,
                height: 32.0,
              )
            : SizedBox(),
        SizedBox(width: 12.0),
        Expanded(
          child: Align(
            alignment: isCurrentUser ? Alignment.topLeft : Alignment.topRight,
            child: Container(
              constraints: BoxConstraints(
                minWidth: 50,
                maxHeight: MediaQuery.of(context).size.height * 0.6,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: softShadows,
              ),
              child: Text(
                message.content,
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

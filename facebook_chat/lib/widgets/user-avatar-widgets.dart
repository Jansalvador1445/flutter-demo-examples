import 'package:facebook_chat/common/colors-common.dart';
import 'package:facebook_chat/model/user-model.dart';
import 'package:facebook_chat/widgets/avatar-widgets.dart';
import 'package:flutter/material.dart';

Widget UserAvatar(User user) {
  return Padding(
    padding: EdgeInsets.only(
      top: 6,
      right: 10,
      left: 10,
    ),
    child: Column(
      children: <Widget>[
        Avatar(
          url: user.imgUrl,
          isOnline: user.isOnline,
        ),
        SizedBox(height: 4),
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
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    ),
  );
}

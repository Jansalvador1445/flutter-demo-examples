import 'package:facebook_chat/common/box-colors-common.dart';
import 'package:facebook_chat/common/colors-common.dart';
import 'package:facebook_chat/details(Input)/chat-messages-details.dart';
import 'package:facebook_chat/details(Input)/chat-user-details.dart';
import 'package:facebook_chat/widgets/avatar-widgets.dart';
import 'package:facebook_chat/widgets/recent-chat-widget.dart';
import 'package:facebook_chat/widgets/user-avatar-widgets.dart';
import 'package:flutter/material.dart';

class FacebookChatMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Row(
                  children: <Widget>[
                    Avatar(
                      url: currentUser.imgUrl,
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        boxShadow: softShadows,
                        color: background,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: background,
                    boxShadow: softShadowsInvert,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.search,
                          size: 16,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      SizedBox(width: 12.0),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: textColor, fontSize: 16.0),
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            hintStyle: TextStyle(
                              color: textColor.withOpacity(0.6),
                            ),
                            filled: false,
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 4.0,
                              vertical: 12.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100.0,
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: favoriteUsers.length,
                    itemBuilder: (BuildContext ctx, int index) =>
                        UserAvatar(favoriteUsers[index]),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  itemCount: recentChats.length,
                  itemBuilder: (BuildContext ctx, int index) =>
                      RecentChat(recentChats[index], context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

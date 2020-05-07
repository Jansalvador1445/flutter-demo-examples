import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  "Flutter Philippines",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

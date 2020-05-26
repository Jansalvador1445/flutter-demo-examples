import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Menu extends StatelessWidget {
  Menu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff082777),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, 128.0),
            child: Container(
              width: 375.0,
              height: 732.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33.0),
                color: const Color(0xfffafafa),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 65.0),
            child: Text(
              'Accounts',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(21.0, 165.0),
                child: Container(
                  width: 333.0,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                    color: const Color(0xff3b5daf),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff707070)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x290e3696),
                          offset: Offset(0, 3),
                          blurRadius: 6)
                    ],
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(44.0, 224.0),
                child: Text(
                  '****  ****  ****',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(155.0, 222.0),
                child: Text(
                  '1234',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 13,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(44.0, 190.0),
                child: Container(
                  width: 67.0,
                  height: 23.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/sample.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(44.0, 280.0),
                child: Text(
                  'JOHN DOE',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 13,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(44.0, 299.0),
                child: Text(
                  'SAVINGS ACCOUNT',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 8,
                    color: const Color(0xffffffff),
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Transform.translate(
                offset: Offset(288.0, 190.0),
                child: Text(
                  'DEBIT',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 13,
                    color: const Color(0xffffffff),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, 181.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(21.0, 165.0),
                  child: Container(
                    width: 333.0,
                    height: 170.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23.0),
                      color: const Color(0xff3b5daf),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x290e3696),
                            offset: Offset(0, 3),
                            blurRadius: 6)
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(44.0, 224.0),
                  child: Text(
                    '****  ****  ****',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 18,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(155.0, 222.0),
                  child: Text(
                    '1234',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 13,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(44.0, 190.0),
                  child: Container(
                    width: 67.0,
                    height: 23.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/sample.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(44.0, 280.0),
                  child: Text(
                    'JOHN DOE',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 13,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(44.0, 299.0),
                  child: Text(
                    'SAVINGS ACCOUNT',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 8,
                      color: const Color(0xffffffff),
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(288.0, 190.0),
                  child: Text(
                    'DEBIT',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 13,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(-118.0, 152.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(139.5, 382.0),
                  child: Container(
                    width: 332.5,
                    height: 68.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 5),
                            blurRadius: 6)
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(259.75, 409.0),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 13,
                        color: const Color(0xffffaf00),
                      ),
                      children: [
                        TextSpan(
                          text: '+',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' Add Account',
                          style: TextStyle(
                            color: const Color(0xffbdc3c7),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(336.0, 68.0),
            child: Container(
              width: 18.0,
              height: 15.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/hamburger.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'menu.dart';

class Login extends StatelessWidget {
  Login({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(74.0, 111.0),
            child: Container(
              width: 227.0,
              height: 79.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/bdologo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(91.0, 200.0),
            child: Text(
              'Online Mobile Banking',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: const Color(0xff082777),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(-85.5, 69.0),
            child: Stack(
              children: <Widget>[
                Transform.translate(
                    offset: Offset(139.5, 382.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),
                        );
                      },
                      child: Container(
                        width: 276.0,
                        height: 43.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: const Color(0xffffaf00),
                          border: Border.all(
                              width: 1.0, color: const Color(0x00000000)),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 5),
                                blurRadius: 6)
                          ],
                        ),
                      ),
                    )),
                Transform.translate(
                    offset: Offset(251.5, 395.93),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu()),
                        );
                      },
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 16,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(156.0, 510.0),
            child: Text(
              'Fingerprint ',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffbdc3c7),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(147.0, 763.0),
            child: Text(
              'Need help?',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xff57617c),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(98.0, 316.0),
            child: Container(
              width: 232.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 1),
                      blurRadius: 8)
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(54.0, 316.0),
            child: Container(
              width: 33.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 1),
                      blurRadius: 8)
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(98.0, 362.0),
            child: Container(
              width: 232.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 1),
                      blurRadius: 8)
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(54.0, 362.0),
            child: Container(
              width: 33.0,
              height: 31.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 1),
                      blurRadius: 8)
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(115.0, 324.0),
            child: Text(
              'jan@gmail.com',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffbdc3c7),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(115.0, 370.0),
            child: Text(
              '**********',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffbdc3c7),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

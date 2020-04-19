import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_ava_michelle/constant.dart';
import 'package:flutter_ava_michelle/details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AVA Michelle',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  List<Details> _details = [];
  PageController _pageController;
  double _currentPage = 0;
  bool _isAnimated = false;

  AnimationController _animationController;
  Animation<double> _tallGirlOffsetAnimation;
  Animation<Offset> _detailsBackgroundOffsetAnimation;
  Animation<Offset> _detailsOffsetAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {
          _currentPage = _pageController.page;

          Timer(
            Duration(seconds: 5),
            () => _animationController.forward(),
          );
        });
      });

    final details1 = Details(talent: "Actress", imageUrl: AssetConstant.photo1);
    final details2 = Details(talent: "Model", imageUrl: AssetConstant.photo2);
    final details3 =
        Details(talent: "Singer - Song Writer", imageUrl: AssetConstant.photo3);
    _details.addAll([details1, details2, details3]);

    // Prepare animations
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 750),
    );

    _tallGirlOffsetAnimation = Tween<double>(
      begin: -1000,
      end: 0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linearToEaseOut,
      ),
    );

    // Prepare entrance animation
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFffe97a),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (BuildContext context, Widget child) {
            return Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: size.height * 0.60,
                      width: size.width,
                      child: PageView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: _details.length,
                        controller: _pageController,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == _currentPage.floor()) {
                            return PageItemView(
                              details: _details[index],
                              index: index,
                              page: _currentPage,
                              alignment: FractionalOffset.centerRight,
                            );
                          } else if (index == _currentPage.floor() + 1) {
                            return PageItemView(
                              details: _details[index],
                              index: index,
                              page: _currentPage,
                              alignment: FractionalOffset.centerLeft,
                            );
                          } else {
                            return PageItemView(
                              details: _details[index],
                              index: index,
                              page: _currentPage,
                            );
                          }
                        },
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Transform.translate(
                    offset: Offset(
                      size.width / 2 - 80,
                      _tallGirlOffsetAnimation.value,
                    ),
                    child: Container(
                      height: 100,
                      width: 150,
                      child: Image.network(AssetConstant.tallGirlLogo),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 48,
                      left: 32,
                      right: 32,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(width: 16),
                        InkWell(
                            onTap: () {
                              setState(() {
                                _isAnimated = !_isAnimated;
                              });

                              if (_isAnimated) {
                                _animationController.forward();
                              } else {
                                _animationController.reverse();
                              }
                            },
                            child: Image.asset(
                              'assets/netflix.png',
                              height: 100,
                              width: 150,
                              fit: BoxFit.fill,
                            )),
                        SizedBox(width: 16),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PageItemView extends StatefulWidget {
  final double _defaultItemHeight = 500;
  final double _defaultPerspective = 0.002;
  final double _defaultAngle = pi / 2;
  final double _defaultProductAngle = -1;
  final Alignment _defaultAlignment = FractionalOffset.center;

  final double itemHeight;
  final Details details;
  final int index;
  final double page;
  final double perspective;
  final double angle;
  final double productAngle;
  final Alignment alignment;

  const PageItemView({
    Key key,
    @required this.details,
    @required this.index,
    @required this.page,
    this.itemHeight,
    this.perspective,
    this.angle,
    this.productAngle,
    this.alignment,
  })  : assert(index != null, 'index must not be null!'),
        assert(index != null, 'page must not be null!'),
        super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PageItemViewState();
  }
}

class _PageItemViewState extends State<PageItemView> {
  double get _itemHeight => widget.itemHeight ?? widget._defaultItemHeight;
  Alignment get _alignment => widget.alignment ?? widget._defaultAlignment;
  Details get _product => widget.details;
  int get _index => widget.index ?? 0;
  double get _page => widget.page ?? 0;
  double get _perspective => widget.perspective ?? widget._defaultPerspective;
  double get _angle => widget.angle ?? widget._defaultAngle;
  double get _productAngle => widget.angle ?? widget._defaultProductAngle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _alignment != null
              ? Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, _perspective)
                    ..scale(1 - lerpDouble(0, -0.25, _index - _page))
                    ..rotateY(_angle * (_page - _index)),
                  alignment: _alignment,
                  child: _buildBackground(_itemHeight),
                )
              : _buildBackground(_itemHeight),
          Transform.translate(
            offset: Offset(0, -20),
            child: Transform.rotate(
              angle: _productAngle * (_page - _index),
              child: Container(
                height: 300,
                width: 350,
                child: Center(
                  child: Transform.rotate(
                    angle: 0,
                    child: Image.network(_product.imageUrl),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackground(double height) {
    return Container(
      height: height,
      width: 300,
      margin: const EdgeInsets.all(32),
      // TODO: Apparently, box shadow is slow in this transition. Action item: Investigate and file an issue
      // boxShadow: [
      //   BoxShadow(
      //     offset: Offset(0, 0),
      //     color: Color(0xFFE3E3E3),
      //     blurRadius: 30,
      //   ),
      // ],
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Container(
              height: height,
              color: Colors.white,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text(
                  "AVA MICHELLE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            _product.talent.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

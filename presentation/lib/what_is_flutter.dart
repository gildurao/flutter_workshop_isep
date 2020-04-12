import 'dart:ui';

import 'package:flutter/material.dart';

class WhatIsFlutter extends StatefulWidget {
  WhatIsFlutter({Key key}) : super(key: key);

  @override
  _WhatIsFlutterState createState() => _WhatIsFlutterState();
}

class _WhatIsFlutterState extends State<WhatIsFlutter>
    with SingleTickerProviderStateMixin {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _precacheAssets(context);
    return GestureDetector(
      onTap: () {
        if (_pageController.page < 5) {
          _pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOutSine);
        }
      },
      onDoubleTap: () {
        _pageController.previousPage(
            duration: Duration(milliseconds: 300), curve: Curves.easeInOutSine);
      },
      child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          _FirstPage(),
          _SecondPage(),
          _ThirdPage(),
          _FourthPage(),
          _FifthPage(),
          _SixthPage(),
        ],
      ),
    );
  }
}

void _precacheAssets(BuildContext context) {
  precacheImage(AssetImage('skia.png'), context);
  precacheImage(AssetImage('dart.png'), context);
  precacheImage(AssetImage('android.png'), context);
  precacheImage(AssetImage('ios.png'), context);
  precacheImage(AssetImage('macos.png'), context);
  precacheImage(AssetImage('hummingbird.png'), context);
  precacheImage(AssetImage('tux.png'), context);
  precacheImage(AssetImage('windows.png'), context);
  precacheImage(AssetImage('fuchsia.png'), context);
  precacheImage(AssetImage('flutterlayers.png'), context);
}

class _SixthPage extends StatelessWidget {
  const _SixthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      alignment: Alignment.center,
      child: Image.asset('flutterlayers.png'),
    );
  }
}

class _FifthPage extends StatelessWidget {
  const _FifthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Ok, so Flutter seems pretty cool...',
            style: TextStyle(
              color: const Color(0xff4285f4),
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '... but how do I use it?',
            style: TextStyle(
                color: const Color(0xffea4335),
                fontSize: 60,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '🤔🤔🤔🤔🤔',
            textScaleFactor: 10.0,
          ),
        ],
      ),
    );
  }
}

class _FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _FlutterFeatures();
  }
}

class _FlutterFeatures extends StatelessWidget {
  _FlutterFeatures({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffB0E0E6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'Flutter features...',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 100,
                  color: Color(0xff4285f4),
                  fontWeight: FontWeight.bold),
            ),
            _CustomRow(
              text: 'Hot Reload',
              color: Color(0xffea4335),
              icon: Icons.refresh,
            ),
            _CustomRow(
              text: 'Declarative UI',
              color: Colors.orange,
              icon: Icons.desktop_mac,
            ),
            _CustomRow(
              text: 'Near-native Performance',
              color: Colors.pink,
              icon: Icons.timer,
            ),
            _CustomRow(
              text: 'Engaging and Growing Community',
              color: Color(0xff34a853),
              icon: Icons.people_outline,
            ),
          ],
        ));
  }
}

class _CustomRow extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  const _CustomRow({
    Key key,
    @required this.color,
    @required this.text,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 64),
          child: Text(text,
              style: TextStyle(
                  fontSize: 60, color: color, fontWeight: FontWeight.bold)),
        ),
        Icon(
          icon,
          color: color,
          size: 80,
        ),
      ],
    );
  }
}

class _ThirdPage extends StatelessWidget {
  const _ThirdPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
        direction: Axis.horizontal,
        children: [
          _CustomFlexible(
            color: Color(0xff00BFFF),
            children: <Widget>[
              Text('Stable',
                  style: TextStyle(fontSize: 38, color: Colors.black87)),
              Transform.scale(scale: 0.95, child: Image.asset('android.png')),
              Transform.scale(scale: 0.6, child: Image.asset('ios.png')),
            ],
          ),
          _CustomFlexible(color: Color(0xff6A5ACD), children: [
            Text('Beta', style: TextStyle(fontSize: 38, color: Colors.black87)),
            Transform.scale(scale: 0.95, child: Image.asset('hummingbird.png')),
          ]),
          _CustomFlexible(color: Colors.blue[300], children: [
            Text('Alpha',
                style: TextStyle(fontSize: 38, color: Colors.black87)),
            Transform.scale(scale: 0.8, child: Image.asset('macos.png')),
          ]),
          _CustomFlexible(color: Color(0xff4682B4), children: [
            Text('Technical Preview',
                style: TextStyle(fontSize: 34, color: Colors.black87)),
            Transform.scale(
              scale: 0.95,
              child: Image.asset('windows.png'),
            ),
            Transform.scale(scale: 0.90, child: Image.asset('tux.png')),
          ]),
          _CustomFlexible(color: Color(0xff87CEEB), children: [
            Text('???', style: TextStyle(fontSize: 38, color: Colors.black87)),
            Transform.scale(scale: 0.8, child: Image.asset('fuchsia.png')),
          ])
        ],
      ),
    );
  }
}

class _CustomFlexible extends StatelessWidget {
  final List<Widget> children;
  final Color color;

  const _CustomFlexible({
    Key key,
    @required this.children,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 128.0),
        child: Card(
          color: Color(0xffB0E0E6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: children,
          ),
        ),
      ),
    ));
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Transform.scale(scale: 0.7, child: Image.asset('dart.png')),
                  Transform.scale(scale: 0.5, child: Image.asset('skia.png')),
                ],
              ),
            ),
            Flexible(
                child: RichText(
                    text: TextSpan(
                        text:
                            'Flutter relies on Dart (programming language) and Skia, a graphics engine\nAlso by ',
                        style: TextStyle(
                            fontSize: 38,
                            fontStyle: FontStyle.italic,
                            color: Colors.black87),
                        children: _google())))
          ],
        ),
      ),
    );
  }
}

class _FirstPage extends StatelessWidget {
  const _FirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Center(
        child: Row(
          children: <Widget>[
            FlutterLogo(
              size: 400,
            ),
            Flexible(child: _Description())
          ],
        ),
      ),
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        maxLines: 3,
        text: TextSpan(
            text:
                'Flutter is an open-source framework for cross-platform app development created by ',
            style: TextStyle(
                fontSize: 44,
                fontStyle: FontStyle.italic,
                color: Colors.black87),
            children: _google()));
  }
}

List<TextSpan> _google() {
  return [
    TextSpan(text: 'G', style: TextStyle(color: const Color(0xff4285f4))),
    TextSpan(text: 'o', style: TextStyle(color: const Color(0xffea4335))),
    TextSpan(text: 'o', style: TextStyle(color: const Color(0xfffbbc05))),
    TextSpan(text: 'g', style: TextStyle(color: const Color(0xff4285f4))),
    TextSpan(text: 'l', style: TextStyle(color: const Color(0xff34a853))),
    TextSpan(text: 'e', style: TextStyle(color: const Color(0xffea4335))),
  ];
}

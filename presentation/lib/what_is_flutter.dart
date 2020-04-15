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
        if (_pageController.page < 16) {
          _pageController.nextPage(
            duration: Duration(
              milliseconds: 300,
            ),
            curve: Curves.easeInOutSine,
          );
        }
      },
      onDoubleTap: () {
        _pageController.previousPage(
          duration: Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeInOutSine,
        );
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
          _SeventhPage(),
          _EighthPage(),
          _NinthPage(),
          _TenthPage(),
          _EleventhPage(),
          _TwelfthPage(),
          _ThirteenthPage(),
          _FourteenthPage(),
          _FifteenthPage(),
          _SixteenthPage(),
          _SeventeenthPage(),
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
  precacheImage(AssetImage('kermitquestion.png'), context);
  precacheImage(AssetImage('anotherkermit.png'), context);
  precacheImage(AssetImage('bloc.png'), context);
  precacheImage(AssetImage('thinkingkermit.png'), context);
  precacheImage(AssetImage('flutterbloc.png'), context);
  precacheImage(AssetImage('letstalk.png'), context);
  precacheImage(AssetImage('kermitwhy.png'), context);
}

class _SeventeenthPage extends StatelessWidget {
  const _SeventeenthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Image.asset(
              'letstalk.png',
            ),
          ),
        ],
      ),
    );
  }
}

class _SixteenthPage extends StatelessWidget {
  const _SixteenthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            child: Text(
              'Time to write tests!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 80,
                color: Colors.pink,
              ),
            ),
          ),
          Flexible(
            child: Image.asset(
              'kermitwhy.png',
            ),
          ),
        ],
      ),
    );
  }
}

class _FifteenthPage extends StatelessWidget {
  const _FifteenthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        children: <Widget>[
          Flexible(
            child: Image.asset(
              'flutterbloc.png',
            ),
          ),
        ],
      ),
    );
  }
}

class _FourteenthPage extends StatelessWidget {
  const _FourteenthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'flutter_bloc package by Felix Angelov',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 60,
                    color: Color(0xff4285f4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Key Concepts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 45,
                    color: Color(0xff34a853),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    '(Multi)BlocProvider - injects Bloc dependencies throughout a widget subtree',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'BlocBuilder - requires a bloc and a builder function, builds different UIs according to the bloc\'s state',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '(Multi)BlocListener - listens for changes in a bloc\'s state to trigger actions (e.g. navigation)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'BlocConsumer - a combination of BlocBuilder and BlocListener',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      '(Multi)RepositoryProvider - injects repository dependencies throughout a widget subtree',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ThirteenthPage extends StatelessWidget {
  const _ThirteenthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            child: Text(
              'Ok, so Bloc seems pretty amazing...',
              style: TextStyle(
                color: const Color(0xff4285f4),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Text(
              '... but there are some nuisances',
              style: TextStyle(
                color: const Color(0xffea4335),
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            child: Image.asset(
              'thinkingkermit.png',
            ),
          ),
        ],
      ),
    );
  }
}

class _TwelfthPage extends StatelessWidget {
  const _TwelfthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('bloc.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Let\'s try it out!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EleventhPage extends StatelessWidget {
  const _EleventhPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'bloc package by Felix Angelov',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 60,
                    color: Color(0xff4285f4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Key Concepts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 45,
                    color: Color(0xff34a853),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Events - input to a Bloc, dispatched by user interactions',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'States - output of a Bloc, UI changes according to how state changes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Transitions - change from one state to another',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Streams - a stream is a sequence of asynchronous data',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      'Blocs - component which converts a stream of incoming events into a stream of outgoing states',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TenthPage extends StatelessWidget {
  const _TenthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Should we implement BLoC from scratch?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 60,
                color: Color(0xff4285f4),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Sure, it\'s possible, but not recommended...',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 40,
                color: Color(0xff34a853),
              ),
            ),
          ),
          Image.asset(
            'anotherkermit.png',
          ),
        ],
      ),
    );
  }
}

class _NinthPage extends StatelessWidget {
  const _NinthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'BLoC - Business Logic Component',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 60,
                    color: Color(0xff4285f4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'State Management Pattern',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 45,
                    color: Color(0xff34a853),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Input and Output of a BLoC is made through Streams and Sinks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Dependencies must be injectable and Platform agnostic',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'No platform branching is allowed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.crop_square,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Implementation can be whatever you want as long as you follow the above rules',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _EighthPage extends StatelessWidget {
  const _EighthPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                    ),
                    Text(
                      'setState',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                    ),
                    Text(
                      'BLoC',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                    ),
                    Text(
                      'MobX',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                    ),
                    Text(
                      'Provider',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
                    ),
                    Text(
                      'Redux',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'and many many others...',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 40,
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            'kermitquestion.png',
          ),
        ],
      ),
    );
  }
}

class _SeventhPage extends StatelessWidget {
  const _SeventhPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'UI',
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 200,
                ),
              ),
              Text(
                ' = ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 200,
                ),
              ),
              Text(
                'f(state)',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 200,
                ),
              ),
            ],
          ),
          Text(
            'How we manage state is crucial for our app...',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 60,
            ),
          )
        ],
      ),
    );
  }
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
              fontWeight: FontWeight.bold,
            ),
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
          child: Text(
            text,
            style: TextStyle(
              fontSize: 60,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
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

import 'package:flutter/material.dart';

class PresentationContents extends StatelessWidget {
  const PresentationContents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffB0E0E6),
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: _Bulletin(
                bulletinColor: Colors.green, text: 'What is Flutter?'),
          ),
          _Bulletin(
              bulletinColor: Colors.blue, text: 'Widgets, widgets, widgets!'),
          _Bulletin(bulletinColor: Colors.red, text: 'Behind the Widgets'),
          _Bulletin(
              bulletinColor: Colors.pink, text: 'State Management with BLoC'),
          _Bulletin(
              bulletinColor: Colors.orange, text: 'It\'s all about tests'),
        ],
      ),
    );
  }
}

class _Bulletin extends StatelessWidget {
  final MaterialColor bulletinColor;
  final String text;

  const _Bulletin({Key key, this.bulletinColor, @required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 110.0),
      child: Row(
        children: <Widget>[
          FlutterLogo(
            size: 110,
            colors: bulletinColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 64.0),
            child: Text(
              text,
              style: TextStyle(
                color: bulletinColor,
                fontSize: 60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

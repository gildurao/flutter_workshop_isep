import 'package:flutter/material.dart';
import 'dart:math' as math;

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _AnimatedGrid(),
        _Flutter101(),
      ],
    );
  }
}

class _AnimatedGrid extends StatefulWidget {
  _AnimatedGrid({Key key}) : super(key: key);

  @override
  __AnimatedGridState createState() => __AnimatedGridState();
}

class __AnimatedGridState extends State<_AnimatedGrid>
    with TickerProviderStateMixin {
  static const Duration _duration = Duration(milliseconds: 2000);
  final _random = math.Random();
  final _gridTileCount = 1000;
  final _controllers = <AnimationController>[];
  final _colors = [
    Color(0xffF0F8FF),
    Color(0xffE6E6FA),
    Color(0xffB0E0E6),
    Color(0xffADD8E6),
    Color(0xff87CEFA),
    Color(0xff87CEEB),
    Color(0xff00BFFF),
    Color(0xffB0C4DE),
    Color(0xff1E90FF),
    Color(0xff6495ED),
    Color(0xff4682B4),
    Color(0xff7B68EE),
    Color(0xff6A5ACD),
    Color(0xff483D8B),
    Color(0xff4169E1),
    Color(0xff8A2BE2),
    Colors.blue,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.blue[50],
    Colors.blue[100],
    Colors.blue[200],
    Colors.blue[300],
    Colors.blue[400]
  ];
  List<ColorTween> _colorTweens = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _gridTileCount; i++) {
      AnimationController controller =
          AnimationController(vsync: this, duration: _duration);
      _colorTweens.add(ColorTween(begin: _getColor(), end: _getColor()));
      controller.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
      controller.forward();
      _controllers.add(controller);
    }
  }

  @override
  void dispose() {
    _controllers.forEach((AnimationController c) => c.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var animation = _colorTweens[index].animate(_controllers[index]);
        return AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return GridTile(
                  child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1.2), color: animation.value),
              ));
            });
      },
      itemCount: _gridTileCount,
    );
  }

  Color _getColor() {
    return _colors[_random.nextInt(_colors.length)];
  }
}

class _Flutter101 extends StatefulWidget {
  _Flutter101({Key key}) : super(key: key);

  @override
  __Flutter101State createState() => __Flutter101State();
}

class __Flutter101State extends State<_Flutter101>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2.0),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                  )
                ]),
            child: CircleAvatar(
              radius: 200,
              child: FlutterLogo(
                size: 350,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 2),
                color: Colors.lightBlue[100],
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                  )
                ]),
            child: Text(
              'Flutter 101',
              style: TextStyle(color: Colors.black87, fontSize: 144),
            ),
          ),
        ],
      ),
    );
  }
}

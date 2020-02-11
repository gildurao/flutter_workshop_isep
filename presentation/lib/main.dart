import 'package:flutter/material.dart';
import 'slides.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Presentation',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          PresentationContents(),
          AnimatedBuilder(
            animation: animationController,
            child: GestureDetector(
              child: Splash(),
              onTap: () => animationController.forward(),
            ),
            builder: (_, child) {
              return Transform.translate(
                offset: Offset(animationController.value, 0),
                child: Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..rotateY(-math.pi * animationController.value / 2),
                  alignment: Alignment.centerLeft,
                  child: child,
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}

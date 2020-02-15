import 'package:flutter/material.dart';
import 'slides.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  AnimationController _firstSlideAnimation;
  AnimationController _secondSlideAnimation;

  @override
  void initState() {
    super.initState();
    _firstSlideAnimation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    _secondSlideAnimation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    _firstSlideAnimation.dispose();
    _secondSlideAnimation.dispose();
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
          _PresentationContentsTransition(secondSlideAnimation: _secondSlideAnimation),
          _SplashSlideTransition(firstSlideAnimation: _firstSlideAnimation),
        ],
      )),
    );
  }
}

class _PresentationContentsTransition extends StatelessWidget {
  const _PresentationContentsTransition({
    Key key,
    @required AnimationController secondSlideAnimation,
  }) : _secondSlideAnimation = secondSlideAnimation, super(key: key);

  final AnimationController _secondSlideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _secondSlideAnimation,
        child: GestureDetector(
          child: PresentationContents(),
          onTap: () => _secondSlideAnimation.forward(),
        ),
        builder: (_, child) {
          return Transform.translate(
            offset: Offset(_secondSlideAnimation.value, _secondSlideAnimation.value),
            child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(-math.pi * _secondSlideAnimation.value * 4),
            alignment: Alignment.centerLeft,
            child: _secondSlideAnimation.value > 0.6 ? WhatIsFlutter() : child,
          ),
          );
        });
  }
}

class _SplashSlideTransition extends StatelessWidget {
  const _SplashSlideTransition({
    Key key,
    @required AnimationController firstSlideAnimation,
  }) : _firstSlideAnimation = firstSlideAnimation, super(key: key);

  final AnimationController _firstSlideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _firstSlideAnimation,
      child: GestureDetector(
        child: Splash(),
        onTap: () => _firstSlideAnimation.forward(),
      ),
      builder: (_, child) {
        return Transform.translate(
          offset: Offset(_firstSlideAnimation.value, 0),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(-math.pi * _firstSlideAnimation.value / 2),
            alignment: Alignment.centerLeft,
            child: child,
          ),
        );
      },
    );
  }
}

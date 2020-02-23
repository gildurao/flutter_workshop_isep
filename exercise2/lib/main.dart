import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Title(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Text('Minutes', style: TextStyle(fontSize: 30)),
              ), Padding(
                padding: const EdgeInsets.only(top: 64.0),
                child: Text('Seconds', style: TextStyle(fontSize: 30)),
              )],
            ),
            TimerWidget(),
            StartTimerButton()
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text('Timer App', style: TextStyle(fontSize: 60)));
  }
}

class StartTimerButton extends StatelessWidget {
  const StartTimerButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {}, child: Text('CHOOKITY PAK', style: TextStyle(fontSize: 60)));
  }
}

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
              child: ListWheelScrollView(
                  itemExtent: 100,
                  offAxisFraction: 2,
                  children: [
                Text('0', style: TextStyle(fontSize: 60)),
                Text('1', style: TextStyle(fontSize: 60)),
                Text('2', style: TextStyle(fontSize: 60)),
                Text('3', style: TextStyle(fontSize: 60)),
                Text('4', style: TextStyle(fontSize: 60)),
                Text('5', style: TextStyle(fontSize: 60)),
              ])),
          Expanded(
              child: ListWheelScrollView(
                  itemExtent: 100,
                  offAxisFraction: 2,
                  children: [
                Text('0', style: TextStyle(fontSize: 60)),
                Text('1', style: TextStyle(fontSize: 60)),
                Text('2', style: TextStyle(fontSize: 60)),
                Text('3', style: TextStyle(fontSize: 60)),
                Text('4', style: TextStyle(fontSize: 60)),
                Text('5', style: TextStyle(fontSize: 60)),
              ])),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: Icon(
              Icons.hourglass_empty,
              size: 60,
            ),
          ),
          Expanded(
              child: ListWheelScrollView(
                  itemExtent: 100,
                  offAxisFraction: -2,
                  children: [
                Text('0', style: TextStyle(fontSize: 60)),
                Text('1', style: TextStyle(fontSize: 60)),
                Text('2', style: TextStyle(fontSize: 60)),
                Text('3', style: TextStyle(fontSize: 60)),
                Text('4', style: TextStyle(fontSize: 60)),
                Text('5', style: TextStyle(fontSize: 60)),
              ])),
          Expanded(
              child: ListWheelScrollView(
                  itemExtent: 100,
                  offAxisFraction: -2,
                  children: [
                Text('0', style: TextStyle(fontSize: 60)),
                Text('1', style: TextStyle(fontSize: 60)),
                Text('2', style: TextStyle(fontSize: 60)),
                Text('3', style: TextStyle(fontSize: 60)),
                Text('4', style: TextStyle(fontSize: 60)),
                Text('5', style: TextStyle(fontSize: 60)),
              ])),
        ],
      ),
    );
  }
}

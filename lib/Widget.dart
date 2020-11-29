import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:weather_icons/weather_icons.dart';

class Snowflake extends StatefulWidget {
  Snowflake({Key key}) : super(key: key);

  @override
  _SnowflakeWidget createState() => _SnowflakeWidget();
}

class Sun extends StatefulWidget {
  Sun({Key key}) : super(key: key);

  @override
  _SunWidget createState() => _SunWidget();
}

class Cloud extends StatefulWidget {
  Cloud({Key key}) : super(key: key);

  @override
  _CloudWidget createState() => _CloudWidget();
}

class _SunWidget extends State<Sun> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotationTransition(
        turns: _animation,
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(Icons.wb_sunny_sharp, size: 30.0, color: Colors.amber),
        ),
      ),
    );
  }
}

class _CloudWidget extends State<Cloud> with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  Color color;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
      reverseDuration: Duration(seconds: 15),
    )..repeat(reverse: true);
    animation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);


    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotationTransition(
        turns: animation,
        child: Icon(Icons.cloud, size: 30.0, color: Colors.white),
      ),
    );
  }
}

class _SnowflakeWidget extends State<Snowflake> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 15000), vsync: this, value: 0.1)
      ..repeat(reverse: true);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Icon(WeatherIcons.snowflake_cold, size: 30.0, color: Colors.white),
    );
  }
}

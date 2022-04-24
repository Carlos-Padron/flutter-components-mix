import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.redAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);

  void changeShape() {
    setState(() {
      final rnd = new Random();
      _width = rnd.nextInt(300).toDouble() + 70;
      _height = rnd.nextInt(300).toDouble() + 70;
      _color = Color.fromRGBO(
          rnd.nextInt(255), rnd.nextInt(255), rnd.nextInt(300), 1);
      _borderRadius = BorderRadius.circular(rnd.nextInt(255).toDouble() + 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.animation),
        onPressed: changeShape,
      ),
    );
  }
}

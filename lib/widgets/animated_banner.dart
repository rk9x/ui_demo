import 'package:flutter/material.dart';
import 'package:ui_demo/utils/utils.dart';

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);
  @override
  AnimationTextState createState() => AnimationTextState();
}

class AnimationTextState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _controller,
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                '60% off',
                textAlign: TextAlign.center,
                style: commonTextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            onPressed: () {}),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

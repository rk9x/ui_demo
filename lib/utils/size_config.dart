//get width and height of device's screen

import 'package:flutter/widgets.dart';

class SizeConfiguration {
  static late double _screenWidth;
  static late double _screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;

  static late double textSizeMultiplier;
  static late double imageSizeMultiplier;
  static late double widthMultiplier;
  static late double heightMultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    textSizeMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal;
    widthMultiplier = _blockSizeHorizontal;
    heightMultiplier = _blockSizeVertical;

    debugPrint(_blockSizeHorizontal.toString());
    debugPrint(_blockSizeVertical.toString());
  }

  double getWidth() => _screenWidth;
  double getHeight() => _screenHeight;
}
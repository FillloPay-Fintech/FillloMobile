import 'package:flutter/widgets.dart';

class SizeConfig {
  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
  static double _textMultiplier = 0;

  // Reference design dimensions from Figma
  static const double _figmaDesignWidth = 375;
  static const double _figmaDesignHeight = 812;

  static void init(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;

    // Calculate block sizes based on Figma design dimensions
    _blockWidth = _screenWidth / _figmaDesignWidth;
    _blockHeight = _screenHeight / _figmaDesignHeight;

    // Customize text scaling based on screen width
    _textMultiplier = _blockWidth;
  }

  static double scaleWidth(double inputWidth) {
    return _blockWidth * inputWidth;
  }

  static double scaleHeight(double inputHeight) {
    return _blockHeight * inputHeight;
  }

  static double scaleText(double inputTextSize) {
    return _textMultiplier * inputTextSize;
  }
}

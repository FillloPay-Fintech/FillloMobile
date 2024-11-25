import 'package:flutter/widgets.dart';

class SizeConfig {
  SizeConfig.instance();
  static final SizeConfig _instance = SizeConfig.instance();
  factory SizeConfig() => _instance;

  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
  TextScaler _textMultiplier = TextScaler.noScaling;

  // Reference design dimensions from Figma
  static const double _figmaDesignWidth = 375;
  static const double _figmaDesignHeight = 812;

  Future<void> init(BuildContext context) async {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;

    // Calculate block sizes based on Figma design dimensions
    _blockWidth = _screenWidth / _figmaDesignWidth;
    _blockHeight = _screenHeight / _figmaDesignHeight;

    // Customize text scaling based on screen width
    _textMultiplier = MediaQuery.of(context).textScaler.clamp();
  }

  double scaleWidth(double inputWidth) {
    return _blockWidth * inputWidth;
  }

  double scaleHeight(double inputHeight) {
    return _blockHeight * inputHeight;
  }

  double scaleText(double inputTextSize) {
    return _textMultiplier.scale(inputTextSize);
  }
}

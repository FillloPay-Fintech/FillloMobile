import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockWidth = 0;
  static double blockHeight = 0;
  static double textMultiplier = 0;

  // Reference design dimensions from Figma
  static const double figmaDesignWidth = 375;
  static const double figmaDesignHeight = 812;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    // Calculate block sizes based on Figma design dimensions
    blockWidth = screenWidth / figmaDesignWidth;
    blockHeight = screenHeight / figmaDesignHeight;

    // Customize text scaling based on screen width
    textMultiplier = blockWidth;
  }

  static double scaleWidth(double inputWidth) {
    return blockWidth * inputWidth;
  }

  static double scaleHeight(double inputHeight) {
    return blockHeight * inputHeight;
  }

  static double scaleText(double inputTextSize) {
    return textMultiplier * inputTextSize;
  }
}

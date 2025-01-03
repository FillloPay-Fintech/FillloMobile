import 'package:flutter/material.dart';

class OnboardingController with ChangeNotifier {
  final PageController _pageController = PageController(initialPage: 0);
  int _index = 0;
  final int _count = 3;

  PageController get pageController => _pageController;
  int get count => _count;
  int get index => _index;

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }
}

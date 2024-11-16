import 'package:flutter/material.dart';

enum LockType { faceId, fingerPrint, pin }

class ScreenlockController with ChangeNotifier {
  LockType? _lockType;

  LockType? get lockType => _lockType;

  void setLockType(LockType type) {
    _lockType = type;
    notifyListeners();
  }

  void nextScreen(BuildContext context, StatelessWidget nextScreen) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => nextScreen,
    ));
  }
}

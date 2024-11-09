import 'package:flutter/material.dart';

enum AccountType { personal, business }

enum ScreenLockType { faceId, fingerprint, pinCode }

class SignUpController with ChangeNotifier {
  AccountType? _accountType;
  String? _verifyAccount;
  ScreenLockType? _screenLockType;

  AccountType? get accountType => _accountType;
  String? get verifyAccount => _verifyAccount;
  ScreenLockType? get screenLock => _screenLockType;

  void setAccountType(AccountType accountType) {
    _accountType = accountType;
    notifyListeners();
  }

  void setVerificationCode(String verificationCode) {
    _verifyAccount = verificationCode;
    notifyListeners();
  }

  void setScreen(ScreenLockType screenLockType) {
    _screenLockType = screenLockType;
    notifyListeners();
  }
}

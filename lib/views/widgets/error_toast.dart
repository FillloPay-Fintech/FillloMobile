import '../utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

errorToast(String msg) {
  return Fluttertoast.showToast(
      msg: msg,
      fontAsset: "assets/fonts/sf_pro_display/SFPRODISPLAYBOLD.otf",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: SizeConfig.scaleText(16));
}

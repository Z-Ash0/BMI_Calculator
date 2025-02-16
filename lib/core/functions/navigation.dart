import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  void navigateAndReplace(Widget screen) {
    Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (_) => screen));
  }

  void navigateWithName(String screen, {dynamic arguments}) {
    Navigator.of(this)
        .pushNamedAndRemoveUntil(screen, (_) => false, arguments: arguments);
  }

  void navigatePush(Widget screen) {
    Navigator.of(this).push(MaterialPageRoute(builder: (_) => screen));
  }

  void navigatePop() {
    Navigator.of(this).pop();
  }
}

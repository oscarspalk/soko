import 'package:flutter/cupertino.dart';

class AppTextStyle {
  static TextStyle p({Color? color}) {
    return TextStyle(
      fontSize: 16,
      height: 1.6,
      fontWeight: FontWeight.w500,
      color: color,
    );
  }

  static TextStyle h1({Color? color}) {
    return p(color: color)
        .copyWith(fontSize: 32.44, fontWeight: FontWeight.w700);
  }

  static TextStyle h2({Color? color}) {
    return p(color: color)
        .copyWith(fontSize: 28.83, fontWeight: FontWeight.w700);
  }

  static TextStyle h3({Color? color}) {
    return p(color: color)
        .copyWith(fontSize: 25.63, fontWeight: FontWeight.w700);
  }

  static TextStyle h4({Color? color}) {
    return p(color: color)
        .copyWith(fontSize: 22.78, fontWeight: FontWeight.w700);
  }

  static TextStyle h5({Color? color}) {
    return p(color: color)
        .copyWith(fontSize: 20.25, fontWeight: FontWeight.w700);
  }

  static TextStyle h6({Color? color}) {
    return p(color: color).copyWith(fontSize: 18, fontWeight: FontWeight.w700);
  }

  static TextStyle small({Color? color}) {
    return p(color: color).copyWith(fontSize: 14.22);
  }
}

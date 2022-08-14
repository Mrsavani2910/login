import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#6a707c');

  static Color black900 = fromHex('#000000');

  static Color bluegray401 = fromHex('#838ba1');

  static Color black9007a = fromHex('#7a000000');

  static Color bluegray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#e8ecf4');

  static Color gray900 = fromHex('#1e232c');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray300 = fromHex('#dadada');

  static Color gray50 = fromHex('#f7f8f9');

  static Color cyan400 = fromHex('#34c2c1');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

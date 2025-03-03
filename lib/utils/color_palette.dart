import 'dart:ui';

class ColorPalette {
  static Color get borderColor => HexColor('#CECECE');
  static Color get dividerColor => HexColor('#F0F0F0');
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
}

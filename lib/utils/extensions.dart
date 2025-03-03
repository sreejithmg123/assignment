import 'package:flutter/material.dart';

extension ConvertToSliver on Widget {
  Widget convertToSliver() {
    return SliverToBoxAdapter(child: this);
  }
}

extension Context on BuildContext {
  double sh({double size = 1.0}) {
    return MediaQuery.of(this).size.height * size;
  }

  double sw({double size = 1.0}) {
    return MediaQuery.of(this).size.width * size;
  }

  int cacheSize(double size) {
    return (size * MediaQuery.of(this).devicePixelRatio).round();
  }
}

extension WidgetExtension on Widget {
  Widget animatedSwitch({
    Curve? curvesIn,
    Curve? curvesOut,
    int duration = 200,
    int reverseDuration = 200,
  }) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: duration),
      reverseDuration: Duration(milliseconds: reverseDuration),
      switchInCurve: curvesIn ?? Curves.linear,
      switchOutCurve: curvesOut ?? Curves.linear,
      child: this,
    );
  }
}

extension InkWellExtension on InkWell {
  InkWell removeSplash({Color color = Colors.white}) {
    return InkWell(
      onTap: onTap,
      splashColor: color,
      highlightColor: color,
      child: child,
    );
  }
}

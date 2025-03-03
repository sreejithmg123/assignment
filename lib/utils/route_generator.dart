import 'package:assignment/modules/profile/view/profile_view.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static RouteGenerator? _instance;

  static RouteGenerator get instance {
    _instance ??= RouteGenerator();
    return _instance!;
  }

  static const String routeProfileScreen = '/profileScreen';

  Route generateRoute(RouteSettings settings, {var routeBuilders}) {
    switch (settings.name) {
      case routeProfileScreen:
        return _buildRoute(routeProfileScreen, const ProfileScreen());
      default:
        return _buildRoute(routeProfileScreen, const ProfileScreen());
    }
  }

  Route _buildRoute(
    String route,
    Widget widget, {
    bool enableFullScreen = false,
  }) {
    return MaterialPageRoute(
      fullscreenDialog: enableFullScreen,
      settings: RouteSettings(name: route),
      builder: (_) => widget,
    );
  }
}

import 'package:axolotl_pos/pages/homepage.dart';
import 'package:axolotl_pos/pages/settings_page.dart';
import 'package:axolotl_pos/pages/profile_page.dart';
import 'package:flutter/material.dart';

class RouteNames {
  static const String home = '/';
  static const String settings = '/settings';
  static const String profile = '/profile';
}

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    if (settings.name == null) {
      return MaterialPageRoute(builder: (_) => const HomePage());
    }
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteNames.settings:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      // case RouteNames.profile:
      //   return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        // if the current route is the same as the default, we should ignore
        return null;
    }
  }
}

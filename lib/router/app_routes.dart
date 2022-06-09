import 'package:components_app/models/menu_option.dart';
import 'package:components_app/screens/slider_screen.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    //TODO:
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: "Home Screen",
        screen: const HomeScreen()),
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: "list view 1",
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.list_alt,
        name: "list view 2",
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_rounded,
        name: "alert screen",
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard,
        name: "card screen",
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.supervised_user_circle_rounded,
        name: "Avatar screen",
        screen: const AvatarScreen()),
    MenuOption(
        route: 'Animated container',
        icon: Icons.animation,
        name: "Animated screen",
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'Input Screen',
        icon: Icons.text_format_rounded,
        name: "Input Screen",
        screen: const InputScreen()),
    MenuOption(
        route: 'Slider',
        icon: Icons.slow_motion_video_rounded,
        name: "Slider Screen",
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
    'listview2': (BuildContext context) => const Listview2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}

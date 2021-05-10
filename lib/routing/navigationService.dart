import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  void goBack(context) {
    return navigatorKey.currentState.pop();
  }

  Future<dynamic> popAndPushNamed(BuildContext context, String routeName) {
    return navigatorKey.currentState.popAndPushNamed(routeName);
  }

  Future<dynamic> pushReplacementNamed(BuildContext context, String routeName) {
    return navigatorKey.currentState.pushReplacementNamed(routeName);
  }
}

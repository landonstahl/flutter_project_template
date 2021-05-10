import 'package:flutter/material.dart';

class MainNavigationService {
  final GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return mainNavigatorKey.currentState.pushNamed(routeName);
  }

  void goBack(BuildContext context) {
    return mainNavigatorKey.currentState.pop();
  }

  Future<dynamic> popAndPushNamed(BuildContext context, String routeName) {
    return mainNavigatorKey.currentState.popAndPushNamed(routeName);
  }

  Future<dynamic> pushReplacementNamed(BuildContext context, String routeName) {
    return mainNavigatorKey.currentState.pushReplacementNamed(routeName);
  }
}

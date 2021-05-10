import 'package:claudine_website/routing/mainRouteNames.dart';
import 'package:claudine_website/views/placeholders/placeholderScreen.dart';

import 'package:flutter/material.dart';

Route<dynamic> mainGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case PlaceholderRoute:
      return _getPageRoute(PlaceholderScreen());
    default:
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

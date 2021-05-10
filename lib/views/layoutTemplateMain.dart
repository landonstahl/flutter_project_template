import 'package:claudine_website/locator.dart';
import 'package:claudine_website/routing/mainNavigationService.dart';
import 'package:claudine_website/routing/mainRouteNames.dart';
import 'package:claudine_website/routing/mainRouter.dart';

import 'package:flutter/material.dart';

class LayoutTemplateMain extends StatelessWidget {
  const LayoutTemplateMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: locator<MainNavigationService>().mainNavigatorKey,
        onGenerateRoute: mainGenerateRoute,
        initialRoute: PlaceholderRoute,
      ),
    );
  }
}

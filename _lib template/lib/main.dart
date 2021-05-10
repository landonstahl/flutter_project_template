import 'package:claudine_website/locator.dart';
import 'package:claudine_website/views/layoutTemplateMain.dart';

import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  //Instatiates our locator services which contain our navigation and API service
  setupLocator();
  //Instantiates our URL managing service.
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veehive.ai',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutTemplateMain(),
    );
  }
}

#ROUTING

**This directory contains the routing services and dictionaries necessary.**

Navigation is split into 2 services, navigationService and mainNavigationService. 

Main navigation is used for large layout changes, for example: if the main feed of the app includes an app bar at the top, but the login screen does not, main navigator can be used to differentiate these layouts.

Navigation is used for smaller UI changes, for example: if the main feed of the app has an upload screen, a profile screen, and a feed screen, navigator can be used to navigate between these screens without rebuilding the main UI layout detailed above.

Both navigation services have their own dictionary for routes. Route names and their designated subdomain should be specified in routeNames. These names can then be used in router to specify which widget they point to. 

When calling navigation to a new route from a viewmodel, locator.get<exampleNavigationService>().navigateTo(ExampleRoute); can be used, giving the name specified in routeNames rather than the widget name.
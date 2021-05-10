import 'package:claudine_website/routing/mainNavigationService.dart';
import 'package:claudine_website/routing/navigationService.dart';

import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  //Registers our main navigator as a singleton. This service can be used to navigate between different template views.
  locator.registerLazySingleton<MainNavigationService>(
      () => MainNavigationService());
  //Registers our navigator as a singleton. This service can be used to navigate between widgets within template views.
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  //Registers all our API calls as singletons. These can be called from inside each of their respective viewmodels.
}

#VIEWMODELS

**This directory contains all viewmodels used in the project.**

Viewmodels should extend ChangeNotifier. Viewmodels should contain all business logic, following MVVM architecture. 

Variables can be stored in the viewmodel and called upon by the views or widgets. Functions that need to update the UI should call notifyListeners(); at the end to rebuild listening widgets. 

API services can be called by registering the specified API class as a private variable using final _api = locator<exampleApi>(); Services can then be called using _api.exampleService
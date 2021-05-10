#VIEWS

**This directory contains all views used in the project.**

Views can be created as stateless widgets that return ViewModelBuilder<ExampleViewModel>.nonReactive or .reactive depending on whether the view should rebuild itself when the viewmodel tells it to. 

For web, create a directory for each view and include an additional exampleViewDesktop.dart, exampleViewTablet.dart, and exampleViewMobile.dart when responsive layouts are needed. 

Base views should return a scaffold, with the scaffold key being held in the viewmodel.  
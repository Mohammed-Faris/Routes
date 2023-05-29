# router_sample

Types of routes in Flutter

1. push: The push method is used to navigate to a new route/screen. It takes a Route object as a parameter and adds it to the navigation stack. The new route will be displayed on top of the current screen.

2. pop: The pop method is used to remove the current route from the navigation stack and return to the previous route. If you want to pass data back to the previous route, you can provide the data as a result parameter to the pop method.

3. pushReplacement: The pushReplacement method is used to replace the current route with a new route. It removes the current route from the stack and adds the new route in its place. This is commonly used for implementing login flows or splash screens, where you don't want the user to navigate back to the previous screen.

4. pushNamed and pushNamedAndRemoveUntil: These methods are used to navigate to a named route defined in your app's route table. The pushNamed method adds the named route to the stack, while pushNamedAndRemoveUntil allows you to replace the current route stack with a new named route.

5. popUntil: The popUntil method is used to remove routes from the stack until a given condition is met. You can provide a RoutePredicate to determine when to stop popping routes.

6. pushAndRemoveUntil: The pushAndRemoveUntil method is similar to pushReplacement, but it allows you to remove multiple routes from the stack until a given condition is met before pushing the new route.
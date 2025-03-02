import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/core/routing/routes.dart';
import 'package:flutter_advanced/featurs/login/ui/login_screen.dart';

import '../../featurs/onbording/onboarding_screen.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onboardingScreen:
        return MaterialPageRoute(builder:(_)=>const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder:(_)=>const LoginScreen());
      default :
        return MaterialPageRoute(builder: (_)=>const Scaffold(
          body: Center(
            child: Text("no route found"),
          ),
        ));
    }
  }
}
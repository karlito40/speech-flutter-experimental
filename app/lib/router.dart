import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/ds_page.dart';
import 'pages/landing_page.dart';
import 'pages/signup_page.dart';
import 'pages/not_found_page.dart';
import 'routes.dart';
// import 'animations/pages.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME:
      final bool freshInstall = true;
      return CupertinoPageRoute(builder: (context) => freshInstall ? LandingPage() : DSPage());

    case INSTALL:
      return CupertinoPageRoute(builder: (context) => LandingPage());

    case SIGN_UP:
     return CupertinoPageRoute(builder: (context) => SignUpPage());
      // return MaterialPageRoute(builder: (context) => SignUpPage());
//      return FadeRoute(page: SignUpPage());

    case DS:
      return CupertinoPageRoute(builder: (context) => DSPage());
  }

  return CupertinoPageRoute(builder: (context) => NotFoundPage(name: settings.name));
}

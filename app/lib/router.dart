import 'package:flutter/material.dart';
import 'pages/ds_page.dart';
import 'pages/landing_page.dart';
import 'pages/signup_page.dart';
import 'pages/not_found_page.dart';
import 'routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HOME:
      final bool freshInstall = true;
      return MaterialPageRoute(builder: (context) => freshInstall ? LandingPage() : DSPage());

    case INSTALL:
      return MaterialPageRoute(builder: (context) => LandingPage());

    case SIGN_UP:
      return MaterialPageRoute(builder: (context) => SignUpPage());

    case DS:
      return MaterialPageRoute(builder: (context) => DSPage());
  }

  return MaterialPageRoute(builder: (context) => NotFoundPage(name: settings.name));
}

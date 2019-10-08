import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/theme.dart';
import 'router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark
      )
    );

    final bool freshInstall = true;

    return MaterialApp(
      title: 'Speech',
      theme: appTheme,
      initialRoute: '/',
      onGenerateRoute: router.generateRoute
    );
  }
}

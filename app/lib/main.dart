import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app/theme.dart';
import 'pages/ds_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

    return MaterialApp(
      title: 'Speech',
      theme: appTheme,
      home: Scaffold(body: DSPage())
    );
  }
}

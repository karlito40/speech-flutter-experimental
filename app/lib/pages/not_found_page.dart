import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final String name;
  const NotFoundPage({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Route for $name is not defined'),
      ),
    );
  }
}

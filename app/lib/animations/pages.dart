import 'package:flutter/material.dart';

class HorizontalPageRoute extends PageRouteBuilder {
  final WidgetBuilder builder;

  HorizontalPageRoute({ this.builder }) : super(
    pageBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
    ) {
      return builder(context);
    },
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) {
      print("from = ${ModalRoute.of(context).settings}");
      return Stack(
        children: [
          SlideTransition(
            position: new Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          )
        ],
      );
    }
  );
}

class FadePageRoute extends PageRouteBuilder {
  final WidgetBuilder builder;

  FadePageRoute({ this.builder }) : super(
    pageBuilder: (BuildContext context, __, ___) => builder(context),
    transitionsBuilder: (_, animation, ___, Widget child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    }
  );
}
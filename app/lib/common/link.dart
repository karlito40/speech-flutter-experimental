import 'package:flutter/material.dart';
import 'package:app/theme.dart';

class Link extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;

  const Link({
    Key key,
    this.text,
    this.isActive = false,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decoration = isActive
      ? const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: primaryColor),
        ),
      )
      : null;

    return FlatButton(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(5)
      ),
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 10),
      child: Container(
        child: Text(text, style: Theme.of(context).textTheme.body1),
        decoration: decoration
      ),
      onPressed: onPressed
    );
  }
}

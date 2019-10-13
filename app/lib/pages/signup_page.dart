import 'package:flutter/material.dart';
import 'package:app/theme.dart';
import 'package:app/common/link.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    setNotificationBar(THEME.dark);

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Link(text: 'Connexion'),
                    Link(text: 'Inscription', isActive: true)
                  ]
                ),
              ),
              Expanded(child: Text('yolo !'))
            ]
          )
        )
      )
    );
  }
}

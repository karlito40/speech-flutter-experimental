import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/theme.dart';
import 'package:app/buttons.dart';
import 'package:app/routes.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light
      )
    );

    final double maxHeaderWidth = min(300, 2 * (MediaQuery.of(context).size.width / 3));
    final Widget fbIcon = SvgPicture.asset('assets/icons/fb.svg', width: 38, height: 38);
    final Widget googleIcon = SvgPicture.asset('assets/icons/google.svg', width: 38, height: 38);
    final Widget twitterIcon = SvgPicture.asset('assets/icons/twitter.svg', width: 38, height: 38);

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Container(
            color: primaryColor,
            child: SafeArea(
              child: Container(
                // l'alignement est nécessaire pour pas que l'element parent
                // prenne la taille de son enfant
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  constraints: BoxConstraints(maxWidth: maxHeaderWidth),
                  margin: EdgeInsets.only(right: 0, top: 35, left: 35),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      "L'amour \nest il \naveugle ?".toUpperCase(),
                      style: Theme.of(context).textTheme.display2.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 35, bottom: 22, left: 35),
                child: Text("Découvrons le.")
              ),
              Container(
                margin: EdgeInsets.only(right: 35, bottom: 30, left: 35),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: fbIcon,
                      onPressed: () => Navigator.pushNamed(context, '/noooppp')
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: googleIcon,
                      onPressed: () => Navigator.pushNamed(context, SIGN_UP)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      icon: twitterIcon,
                      onPressed: () { },
                    ),
                  ),
                  SubmitButton('Email')
                ]),
              )

            ],
          ),
        ),
      ]),
    );
  }
}


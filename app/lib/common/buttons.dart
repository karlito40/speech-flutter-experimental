import 'package:flutter/material.dart';
import 'package:app/theme.dart';

enum ButtonType {
  submit,
  light,
  danger,
  link
}

class ButtonStyle {
  final TextStyle text;
  final BoxDecoration decoration;
  final Color background;
  final Color splash;

  const ButtonStyle({ this.text, this.background, this.splash, this.decoration });
}

Map<ButtonType, ButtonStyle> buttonStyles = {
  ButtonType.submit: ButtonStyle(
    background: primaryColor,
    splash: primarySwatch[200],
    text: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
  ),
  ButtonType.light: ButtonStyle(
    background: secondaryColor.withOpacity(0.05),
    splash: secondaryColor.withOpacity(0.3),
    text: const TextStyle(color: secondaryColor, fontWeight: FontWeight.w600),
  ),
  ButtonType.danger: ButtonStyle(
    background: dangerColor.withOpacity(0.05),
    splash: dangerColor.withOpacity(0.3),
    text: const TextStyle(color: dangerColor),
  )
};

class Button extends StatelessWidget {
  final String text;
  final ButtonType type;
  const Button({
    Key key,
    this.text,
    this.type = ButtonType.submit
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = buttonStyles[type];
    TextStyle body1 = Theme.of(context).textTheme.body1;

    return FlatButton(
      color: buttonStyle.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(30)
      ),
      padding: EdgeInsets.only(
        left: body1.fontSize * 1.4,
        top: body1.fontSize * 0.35,
        right: body1.fontSize * 1.4,
        bottom: body1.fontSize * 0.45,
      ),
      splashColor: buttonStyle.splash,
      onPressed: () {
        print("button pressed {text}");
      },
      child: Container(
        child: Text(text, style: body1.merge(buttonStyle.text)),
        decoration: buttonStyle.decoration
      )
    );
  }
}

class SubmitButton extends Button {
  final String text;
  const SubmitButton(this.text, { Key key }) : super(key: key, text: text, type: ButtonType.submit);
}

class LightButton extends Button {
  final String text;
  const LightButton(this.text, { Key key }) : super(key: key, text: text, type: ButtonType.light);
}

class DangerButton extends Button {
  final String text;
  const DangerButton(this.text, { Key key }) : super(key: key, text: text, type: ButtonType.danger);
}
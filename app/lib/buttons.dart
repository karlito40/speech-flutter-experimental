import 'package:flutter/material.dart';
import 'package:app/theme.dart';

enum ButtonType {
  submit,
  light,
  danger
}

class ButtonColor {
  final Color text;
  final Color background;
  final Color splash;

  const ButtonColor({ this.text, this.background, this.splash });
}

class Button extends StatelessWidget {
  final String text;
  final ButtonType type;

  static Map<ButtonType, ButtonColor> _colors = {
    ButtonType.submit: ButtonColor(
      background: primaryColor,
      text: Colors.white,
      splash: primarySwatch[200],
    ),
    ButtonType.light: ButtonColor(
      background: secondaryColor.withOpacity(0.05),
      text: secondaryColor,
      // splash: Color(0xFFCBB5BC),
      splash: secondaryColor.withOpacity(0.3),
    ),
    ButtonType.danger: ButtonColor(
      background: dangerColor.withOpacity(0.05),
      text: dangerColor,
      splash: dangerColor.withOpacity(0.3),
    )
  };

  const Button({
    Key key,
    this.text,
    this.type = ButtonType.submit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonColor color = _colors[type];
    TextStyle body1 = Theme.of(context).textTheme.body1;

    return FlatButton(
      color: color.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(30)
      ),
      padding: EdgeInsets.only(
        left: body1.fontSize * 1.4,
        top: body1.fontSize * 0.35,
        right: body1.fontSize * 1.4,
        bottom: body1.fontSize * 0.45,
      ),
      splashColor: color.splash,
      onPressed: () {
        print("button pressed {text}");
      },
      child: Text(text, style: body1.copyWith(color: color.text, fontWeight: FontWeight.w600)),
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
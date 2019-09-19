import 'package:flutter/material.dart';
import 'package:app/buttons.dart';

class DSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Inscription (theme)', style: Theme.of(context).textTheme.display1),
              Text('Override Inscription (color)', style: Theme.of(context).textTheme.display1.copyWith(color: Color(0xFF00FFFF))),
              Text(
                'yolo dzadaz pupper heckin boof puggorino very taste wow shooberino, shibe shoober boofers ruff heckin good boys and girls, borkdrive heckin vvv blep. The neighborhood pupper very jealous pupper thicc very taste wow, heckin angery woofer. ',
                style: Theme.of(context).textTheme.body1
              ),

              Container(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: Text(
                    "L'amour est il aveugle ?".toUpperCase(),
                    style: Theme.of(context).textTheme.display2
                  ),
                )
              ),
              Text.rich(
                TextSpan(
                  text: 'Hello',
                  style: TextStyle(fontSize: 20),
                  children: [
                    TextSpan(
                      text: ' beautiful ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(
                      text: ' noop',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                    TextSpan(
                      text: ' lalla lalalal dzdza',
                      style: TextStyle(fontWeight: FontWeight.w600, decoration: TextDecoration.underline)
                    ),
                  ],
                ),
              ),
              // Buttons
              Button(text: 'Submit', type: ButtonType.submit),
              SubmitButton('Submit Helper'),
              Button(text: 'Light', type: ButtonType.light),
              LightButton('Light Helper'),
              Button(text: 'Danger', type: ButtonType.danger),
              DangerButton('Danger Helper'),
          ])
        ),

      )
    );
  }
}

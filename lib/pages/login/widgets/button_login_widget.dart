import 'package:appetit/shared/constants.dart';
import 'package:flutter/material.dart';

class ButtonLoginWidget extends StatelessWidget {
  String text;
  int border;
  Function onPressed;

  ButtonLoginWidget({this.text, this.border = 0, this.onPressed = null});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          //color: ORANGE_APPETIT,
          height: 60,
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        shape: new StadiumBorder(),
        color: ORANGE_APPETIT,
      ),
    );
  }
}

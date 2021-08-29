import 'package:flutter/material.dart';

class Rounded_widget extends StatelessWidget {
  Rounded_widget(
      {@required this.title,
      @required this.onpress,
      @required this.colour,
      @required this.textColour});

  final String? title;
  final Color? colour;
  final Function()? onpress;
  final Color? textColour;
  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.grey,
      elevation: 5.0,
      color: colour,
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      child: MaterialButton(
        child: Text(
          title!,
          style: TextStyle(
            fontSize: 18.0,
            color: textColour,
          ),
        ),
        onPressed: onpress,
      ),
    );
  }
}

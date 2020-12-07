import 'package:flutter/material.dart';




class RoundButton extends StatelessWidget {
  RoundButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
    );
  }
}

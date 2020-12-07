import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  final Color colorOfTheContainer;
  final Widget childCard;
  final Function onPress;

  ResuableCard(
      {@required this.colorOfTheContainer, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colorOfTheContainer,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

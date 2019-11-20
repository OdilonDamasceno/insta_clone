import 'package:flutter/material.dart';

class IconPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2),
      ),
      child: Icon(
        Icons.person_outline,
        size: 100,
      ),
    );
  }
}

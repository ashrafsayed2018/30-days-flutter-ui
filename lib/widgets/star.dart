import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final bool isSelected;
  const Star({this.isSelected = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      child: Icon(
        Icons.star,
        color: isSelected ? Colors.yellow : Colors.grey,
        size: 15,
      ),
    );
  }
}

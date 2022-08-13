import 'package:flutter/material.dart';

import '../constants/constants.dart';

class FieldBox extends StatefulWidget {
  final Text text;
  final IconButton iconButtonn;
  final IconButton iconButtonm;

  const FieldBox({
    required this.text,
    required this.iconButtonn,
    required this.iconButtonm,
    Key? key,
  }) : super(key: key);

  @override
  State<FieldBox> createState() => _FieldBoxState();
}

class _FieldBoxState extends State<FieldBox> {
  int weight = 62;
  int height = 173;
  int age = 21;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: kItemColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.iconButtonn,
          widget.text,
          widget.iconButtonm
        ],
      ),
    );
  }
}

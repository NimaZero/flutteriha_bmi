import 'package:flutter/material.dart';

import '../constants/constants.dart';

enum Gender { male, female }

class Genders extends StatefulWidget {

  final Icon icon;
  final Border border;
  final Icon icon_gender;
  final String gender_text;


  const Genders({

    required this.icon,
    required this.border,
    required this.icon_gender,
    required this.gender_text,

    Key? key,
  }) : super(key: key);

  @override
  State<Genders> createState() => _GendersState();
}

class _GendersState extends State<Genders> {
  Gender? gender;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(10.0),
          border: widget.border),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10.0,
            right: 10.0,
            child: widget.icon,
          ),
          Column(
            children: [
              widget.icon_gender,
              Text(
                widget.gender_text,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: kItemColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

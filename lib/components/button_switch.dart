import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSwitch extends StatelessWidget {
  final String text;
  final bool isSwitched;
  final ValueChanged<bool> onChanged;

  const ButtonSwitch({Key? key, required this.isSwitched, required this.onChanged,required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'HiraginoMaruGothicStdN',
            )),
        Container(
          height: 31,
          width: 51,
          margin: const EdgeInsets.only(left: 3.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white),
            color: Colors.transparent,
          ),
          child: CupertinoSwitch(
            value: isSwitched,
            activeColor: Colors.transparent,
            thumbColor: isSwitched ? Colors.white : Colors.amber,
            trackColor: Colors.white,
            onChanged: onChanged,
          ),
        ),
      ],
    );  }
}


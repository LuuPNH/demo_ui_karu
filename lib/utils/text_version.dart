import 'package:flutter/material.dart';

class TextVersion extends StatelessWidget {
  const TextVersion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: const [
        Text("発注可能数量: ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'HiraginoMaruGothicStdN',
            )),
        Text(
          "9.123",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'HiraginoMaruGothicStdN',
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:demo_ui_karu/resources/colors.dart' as Style;

class TextInItemListview extends StatelessWidget {
  final String rowFirst;
  final double rowSecond;

  const TextInItemListview({
    Key? key,
    required this.rowFirst,
    required this.rowSecond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(rowFirst,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Style.Colors.gray300,
                      fontSize: 10,
                      fontFamily: 'HiraginoMaruGothicStdN',
                      overflow: TextOverflow.clip)),
            )),
        const SizedBox(width: 1.0),
        Expanded(
            child: FittedBox(
              fit: BoxFit.fill,
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(rowSecond.toString(),
                    maxLines: 1,
                    style: const TextStyle(
                      color: Style.Colors.gray300,
                      fontSize: 10,
                      fontFamily: 'HiraginoMaruGothicStdN',
                    )),
              ),
            ))
      ],
    );
  }
}

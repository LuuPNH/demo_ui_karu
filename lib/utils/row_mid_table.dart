import 'package:flutter/material.dart';
import 'package:demo_ui_karu/utils/checkText.dart';
import 'package:demo_ui_karu/resources/colors.dart' as Style;

class RowMidInTable extends StatelessWidget {
  final String rowFirst, rowSecond, rowThird;
  final String? rowSec;

  const RowMidInTable(
      {Key? key,
      required this.rowFirst,
      required this.rowSecond,
      required this.rowThird,
      this.rowSec})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 118,
          child: Container(
            alignment: Alignment.centerRight,
            color: Style.Colors.purple500,
            margin: const EdgeInsets.only(bottom: 1.0, right: 1.0, top: 1.0, left: 2.0),
            height: 25,
            child: rowFirst.isNotEmpty
                ? FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        rowFirst,
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'HiraginoMaruGothicStdN',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
        ),
        Flexible(
          flex: 103,
          child: Container(
            alignment: Alignment.center,
            color: Style.Colors.purple500,
            margin: const EdgeInsets.all(1.0),
            height: 25,
            child: rowFirst.isNotEmpty
                ? FittedBox(
                    fit: BoxFit.fill,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          rowSecond,
                          style: const TextStyle(
                              fontSize: 10,
                              fontFamily: 'HiraginoMaruGothicStdN',
                              color: Style.Colors.blue100),
                        ),
                        if (rowSec.isNullOrEmpty)
                          Container(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              "($rowSec)",
                              style: const TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'HiraginoMaruGothicStdN',
                                  color: Style.Colors.blue100),
                            ),
                          )
                      ],
                    ),
                  )
                : const SizedBox(),
          ),
        ),
        Flexible(
          flex: 119,
          child: Container(
            alignment: Alignment.centerRight,
            color: Style.Colors.purple500,
            margin: const EdgeInsets.only(bottom: 1.0, left: 1.0, top: 1.0, right: 2.0),
            height: 25,
            child: rowThird.isNotEmpty
                ? FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        rowThird,
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'HiraginoMaruGothicStdN',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
        ),
      ],
    );
  }
}

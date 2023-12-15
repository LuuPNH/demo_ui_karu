import 'package:flutter/material.dart';
import 'package:demo_ui_karu/resources/colors.dart' as Style;

import '../../../utils/row_last_table.dart';
import '../../../utils/row_mid_table.dart';

class TableDataWidget extends StatelessWidget {
  const TableDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Style.Colors.purple300,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Title Table
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 118,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "売建",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'HiraginoMaruGothicStdN',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 103,
                  child: Container(
                    alignment: Alignment.center,
                  ),
                ),
                Flexible(
                  flex: 119,
                  child: Container(
                    alignment: Alignment.center,
                    child: const Text(
                      "売建",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'HiraginoMaruGothicStdN',
                      ),
                    ),
                  ),
                )
              ],
            ),
            //Data table
            const RowMidInTable(
              rowFirst: "1.61470",
              rowSecond: "建単価",
              rowThird: "0",
            ),
            const RowMidInTable(
              rowFirst: "1.61470",
              rowSecond: "建単価",
              rowSec: "平均",
              rowThird: "0",
            ),
            const RowMidInTable(
              rowFirst: "1.61470",
              rowSecond: "建単価",
              rowSec: "平均",
              rowThird: "0",
            ),
            const RowMidInTable(
              rowFirst: "1.61470",
              rowSecond: "建単価",
              rowSec: "平均",
              rowThird: "0",
            ),
            const RowMidInTable(
              rowFirst: "1.61470",
              rowSecond: "建単価",
              rowSec: "平均",
              rowThird: "0",
            ),

            //last Row Table
            const RowLastInTable(
              rowFirst: "112,470",
              rowSecond: "建単価",
              rowSec: "平均",
              rowThird: "0",
            )
          ],
        ));
  }
}


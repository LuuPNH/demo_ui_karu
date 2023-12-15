import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ButtonAddRemove extends StatelessWidget {
  final double count;
  final VoidCallback onCountAdd;
  final VoidCallback onCountRemove;

  const ButtonAddRemove(
      {Key? key,
      required this.count,
      required this.onCountAdd,
      required this.onCountRemove})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('###,###.####');
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.only(right: 5.0),
          child: const Text("注文数量",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'HiraginoMaruGothicStdN',
              )),
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              height: 31,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xff2397B8)),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(2.0),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(11),
                        child: FloatingActionButton(
                          backgroundColor: const Color(0xff00b4ff),
                          onPressed: () {
                            onCountAdd();
                          },
                          elevation: 2.0,
                          child: const Icon(
                            Icons.add,
                            size: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(minWidth: 100),
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Center(
                      child: buildRichTextCount(formatter),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(2.0),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(11),
                        child: FloatingActionButton(
                          backgroundColor: const Color(0xff00b4ff),
                          onPressed: () {
                            onCountRemove();
                          },
                          elevation: 2.0,
                          child: const Icon(
                            Icons.remove,
                            size: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  RichText buildRichTextCount(NumberFormat formatter) {
    int findDot = 0;
    String textNormal = "";
    String textSmall = "";
    if (formatter.format(count).contains(".")) {
      findDot = formatter.format(count).indexOf('.');
      textNormal = formatter.format(count).substring(0, findDot);
      textSmall = formatter
          .format(count)
          .substring(findDot, formatter.format(count).length);
    }

    return RichText(
        overflow: TextOverflow.clip,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: textNormal.isNotEmpty && textSmall.isNotEmpty
                    ? textNormal
                    : formatter.format(count),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Solomon',
                )),
            if (textNormal.isNotEmpty && textSmall.isNotEmpty)
              TextSpan(
                  text: textSmall,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Solomon',
                  )),
            const TextSpan(
                text: "万",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'HiraginoMaruGothicStdN',
                )),
          ],
        ));
  }
}

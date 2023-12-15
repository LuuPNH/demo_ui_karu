import 'package:flutter/material.dart';

class TextInButtonUpDown extends StatelessWidget {
  final String text;
  final bool showLastCharacter;
  final bool sizeSmall;

  const TextInButtonUpDown(
      {Key? key, required this.text, required this.showLastCharacter, required this.sizeSmall})
      : super(key: key);

  int get findDot => text.indexOf('.');
  bool get checkDot => text.contains(".");

  @override
  Widget build(BuildContext context) {
    return Center(child: checkDot ? textHaveDot(text) : textNotDot(text));
  }

  FittedBox textHaveDot(String text) {
    final textAfterDot = text.substring(0, findDot);
    final textDot = text.substring(findDot, findDot + 1);
    final textBeforeDotBig = text.substring(findDot + 1, findDot + 3);
    final textBeforeDotSmall = text.substring(findDot + 3, text.length);
    return FittedBox(
      fit: BoxFit.fill,
      child: RichText(
        maxLines: 1,
          overflow: TextOverflow.clip,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: textAfterDot,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizeSmall ? 13 : 22 ,
                    fontFamily: 'Solomon',
                  )),
              TextSpan(
                  text: checkDot ? textDot : "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizeSmall ? 13 : 22,
                    fontFamily: 'Solomon',
                  )),
              TextSpan(
                  text: checkDot ? textBeforeDotBig : "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizeSmall ? 18 : 30,
                    fontFamily: 'Solomon',
                  )),
              TextSpan(
                  text: checkDot ? textBeforeDotSmall : "",
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: sizeSmall ? 13 : 22,
                    fontFamily: 'Solomon',
                  )),
              TextSpan(
                  text: showLastCharacter ? "円" : "",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizeSmall ? 8 : 14,
                    fontFamily: 'HiraginoMaruGothicStdN',
                  ))
            ],
          )),
    );
  }

  FittedBox textNotDot(String text) {
    return FittedBox(
      fit: BoxFit.fill,
      child: RichText(
        maxLines: 1,
          overflow: TextOverflow.clip,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                  text: text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Solomon',
                  )),
              if (showLastCharacter)
                const TextSpan(
                    text: "円",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'HiraginoMaruGothicStdN',
                    ))
            ],
          )),
    );
  }
}

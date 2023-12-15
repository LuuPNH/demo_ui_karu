import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/images.dart';
import '../utils/text_in_button_upDown.dart';

class ButtonUpDown extends StatelessWidget {
  const ButtonUpDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.only(right: 16, left: 16),
      alignment: Alignment.center,
      child: Stack(children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  print("bam xuong ne");
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Images.image_button_sell),
                      centerSlice: Rect.fromLTRB(51, 30, 154, 40),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const TextInButtonUpDown(text: "113.056", showLastCharacter: true, sizeSmall: false),
                ),
              ),
            ),
            const SizedBox(width: 1.0),
            Flexible(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  print("bam len ne");
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 10.0, left: 7.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Images.image_button_buy),
                      centerSlice: Rect.fromLTRB(62, 30, 125, 40),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const TextInButtonUpDown(text: "113.056", showLastCharacter: true, sizeSmall: false,),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: SizedBox(
            height: 47,
            child: Stack(children: [
              Container(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  Images.icon_button_mid,
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("スプレッド",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 7,
                            fontFamily: 'HiraginoMaruGothicStdN',
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis)),
                    Text("0.2",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'HiraginoMaruGothicStdN',
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis))
                  ],
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

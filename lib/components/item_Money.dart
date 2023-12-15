import 'package:demo_ui_karu/components/textItemLastMoney.dart';
import 'package:demo_ui_karu/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../data/model/money.dart';
import '../utils/checkText.dart';
import 'package:demo_ui_karu/resources/colors.dart' as Style;

import '../utils/text_in_button_upDown.dart';

class ItemMoneyBottomSheet extends StatelessWidget {
  final ItemMoney itemMoney;
  final bool valueRadio;
  final ValueChanged<bool?> onChanged;

  const ItemMoneyBottomSheet({
    Key? key,
    required this.valueRadio,
    required this.onChanged,
    required this.itemMoney,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          //title
          if(itemMoney.textTile.isNullOrEmpty)
            Container(
              margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              alignment: Alignment.center,
              color: Style.Colors.white300,
              child: Text(itemMoney.textTile!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Style.Colors.gray300,
                      fontSize: 10,
                      fontFamily: 'HiraginoMaruGothicStdN',
                      overflow: TextOverflow.clip)),
            ),

          Row(
            children: [
              Flexible(
                flex: 1,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 16,
                          width: 16,
                          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Radio<bool>(
                              activeColor: Style.Colors.blue300,
                              groupValue: valueRadio,
                              value: valueRadio,
                              onChanged: onChanged),
                        ),
                        SizedBox(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: 22.0,
                                      height: 22.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1),
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                          itemMoney.flagFirst.isNullOrEmpty
                                                  ? itemMoney.flagFirst!
                                                  : Images
                                                      .image_load_img_error)))),
                                  const SizedBox(width: 4.0),
                                  Container(
                                      width: 22.0,
                                      height: 22.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 0.1),
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                          itemMoney.flagSecond.isNullOrEmpty
                                                  ? itemMoney.flagSecond!
                                                  : Images
                                                      .image_load_img_error)))),
                                ],
                              ),
                              const SizedBox(height: 7.0),
                              if (
                                  itemMoney.nameFlag.isNullOrEmpty)
                                Text(itemMoney.nameFlag!,
                                    style: const TextStyle(
                                        fontFamily: 'HiraginoMaruGothicStdN',
                                        fontSize: 10,
                                        color: Colors.black,
                                        overflow: TextOverflow.clip)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 44,
                  margin: const EdgeInsets.only(bottom: 8.0, top: 3.0),
                  color: Colors.transparent,
                  child: Stack(children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 44,
                            padding: const EdgeInsets.only(
                                right: 13.0, top: 5.0, left: 5.0),
                            decoration: const BoxDecoration(
                                color: Style.Colors.colorBtnDown,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                )),
                            child:
                                    itemMoney.textBtnDown.isNullOrEmpty
                                ? TextInButtonUpDown(
                                    text: itemMoney.textBtnDown!,
                                    showLastCharacter: false,
                                    sizeSmall: true,
                                  )
                                : const SizedBox(),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 44,
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 5.0, right: 5.0),
                            decoration: const BoxDecoration(
                                color: Style.Colors.colorBtnUp,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                )),
                            child:
                                    itemMoney.textBtnUp.isNullOrEmpty
                                ? TextInButtonUpDown(
                                    text: itemMoney.textBtnUp!,
                                    showLastCharacter: false,
                                    sizeSmall: true,
                                  )
                                : const SizedBox(),
                          ),
                        )
                      ],
                    ),
                    Center(
                      child: SizedBox(
                        height: 28,
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                Images.icon_button_mid,
                              ),
                            ),
                            if (
                                itemMoney.textBtnMid.isNullOrEmpty)
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(itemMoney.textBtnMid!,
                                        style: const TextStyle(
                                            fontSize: 8,
                                            fontFamily:
                                                'HiraginoMaruGothicStdN',
                                            color: Colors.black,
                                            overflow: TextOverflow.ellipsis))
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      if (itemMoney.textLastFirst.isNullOrEmpty &&
                          itemMoney.valueLastFirst != null)
                        TextInItemListview(
                          rowFirst:
                                  itemMoney.textLastFirst.isNullOrEmpty
                              ? itemMoney.textLastFirst!
                              : "",
                          rowSecond: (itemMoney.valueLastFirst != null)
                              ? itemMoney.valueLastFirst!
                              : 0,
                        ),
                      if (
                              itemMoney.textLastSecond.isNullOrEmpty &&
                          itemMoney.valueLastSecond != null)
                        TextInItemListview(
                          rowFirst:
                                  itemMoney.textLastSecond.isNullOrEmpty
                              ? itemMoney.textLastSecond!
                              : "",
                          rowSecond: (itemMoney.valueLastSecond != null)
                              ? itemMoney.valueLastSecond!
                              : 0,
                        ),
                      if (itemMoney.textLastThird.isNullOrEmpty &&
                          itemMoney.valueLastThird != null)
                        TextInItemListview(
                          rowFirst:
                                  itemMoney.textLastThird.isNullOrEmpty
                              ? itemMoney.textLastThird!
                              : "",
                          rowSecond: (itemMoney.valueLastThird != null)
                              ? itemMoney.valueLastThird!
                              : 0,
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 1.0,
            padding: const EdgeInsets.only(right: 16.0, left: 16.0),
            color: const Color(0xffE5E5E5),
          )
        ],
      ),
    );
  }
}

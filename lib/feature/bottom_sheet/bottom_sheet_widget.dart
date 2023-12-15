import 'package:demo_ui_karu/data/model/money.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:demo_ui_karu/resources/colors.dart' as Style;

import '../../components/item_Money.dart';
import '../../resources/images.dart';

class BottomSheetMoney extends StatefulWidget {
  final EdgeInsets? paddingBottomSheet;
  const BottomSheetMoney({Key? key, this.paddingBottomSheet}) : super(key: key);

  @override
  _BottomSheetMoneyState createState() => _BottomSheetMoneyState();
}

class _BottomSheetMoneyState extends State<BottomSheetMoney> {
  List<ItemMoney> listItemMoney = const [
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastThird: -0.217),
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
    ItemMoney(
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        flagSecond: Images.icon_jpy_circle,
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
    ItemMoney(
        textTile: "初心者におすすめ！まずはドル円から！",
        flagFirst: Images.icon_usd_circle,
        nameFlag: "USD/JPY",
        textBtnDown: "113.066",
        textBtnUp: "113.058",
        textBtnMid: "0.2",
        textLastFirst: "安値",
        textLastSecond: "高値",
        textLastThird: "前日比",
        valueLastFirst: 113.12,
        valueLastSecond: 113.87,
        valueLastThird: -0.217),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //top
        GestureDetector(
          onTap: () => Navigator.pop(context, false),
          child: Container(
            height: 15.0,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              Images.icon_modal_arrow,
              height: 6.0,
              width: 26.0,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ),
        Container(
          height: 64.0,
          decoration: const BoxDecoration(
              color: Style.Colors.purple300,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("通貨ペア",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'HiraginoMaruGothicStdN',
                      overflow: TextOverflow.clip)),
              Container(
                margin: const EdgeInsets.only(left: 6.0),
                child: Image.asset(Images.icon_help,
                    width: 20, height: 20, fit: BoxFit.cover),
              )
            ],
          ),
        ),
        //top 2
        Container(
          height: 27,
          padding: const EdgeInsets.only(left: 16, right: 16),
          color: Style.Colors.gray500,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.only(right: 8.0),
                  alignment: Alignment.centerRight,
                  child: const Text("通貨ペア",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'HiraginoMaruGothicStdN',
                          overflow: TextOverflow.clip)),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text("売(Bid)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'HiraginoMaruGothicStdN',
                          overflow: TextOverflow.clip)),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: const Text("買(Ask)",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'HiraginoMaruGothicStdN',
                          overflow: TextOverflow.clip)),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  alignment: Alignment.topRight,
                  child: const Text("",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: 'HiraginoMaruGothicStdN',
                          overflow: TextOverflow.clip)),
                ),
              ),
            ],
          ),
        ),
        //mid
        Expanded(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 16, right: 16),
            child:
                //list item
                ListView.builder(
              itemCount: listItemMoney.length,
              itemBuilder: (context, index) {
                return ItemMoneyBottomSheet(
                  valueRadio: true,
                  onChanged: (value) {},
                  itemMoney: listItemMoney[index],
                );
              },
            ),
          ),
        ),

        Container(
          height: 100,
          color: Colors.white,
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(this.context).viewPadding.bottom),
          child: Center(
            child: Container(
              height: 48,
              width: 176,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border:
                    Border.all(color: Style.Colors.gray300, width: 1.0),
              ),
              child: const Text("閉じる",
                  style: TextStyle(
                    color: Style.Colors.gray300,
                    fontSize: 16,
                    fontFamily: 'HiraginoMaruGothicStdN',
                  )),
            ),
          ),
        ),
      ],
    );
  }
}

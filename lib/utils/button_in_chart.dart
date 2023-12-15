import 'package:demo_ui_karu/components/check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../resources/colors.dart' as Style;

import '../feature/bottom_sheet/bottom_sheet_widget.dart';
import '../resources/images.dart';

class ButtonInChart extends StatefulWidget {
  const ButtonInChart({Key? key}) : super(key: key);

  @override
  State<ButtonInChart> createState() => _BtnInChartState();
}

class _BtnInChartState extends State<ButtonInChart> {
  bool isCheckedShowChartShould = false;
  bool isCheckedShowChartAverage = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Container(
        padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 26,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Style.Colors.blue500),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        child: Transform.translate(
                          offset: const Offset(15, 0.0),
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              child: const Image(
                                  height: 20,
                                  width: 20,
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    Images.icon_jpy_circle,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, 0.0),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(11),
                            child: const Image(
                                height: 20,
                                width: 20,
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  Images.icon_usd_circle,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15.0, right: 3),
                        child: const Text("USD/JPY",
                            style: TextStyle(
                                fontFamily: 'HiraginoMaruGothicStdN',
                                fontSize: 10,
                                color: Colors.black,
                                overflow: TextOverflow.clip)),
                      ),
                      ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(9),
                          child: FloatingActionButton(
                            backgroundColor: Style.Colors.blue300,
                            child: SvgPicture.asset(
                              Images.icon_button_pullDown,
                              height: 16.0,
                              width: 16.0,
                            ),
                            onPressed: () {
                              showModalBottomSheet<void>(
                                context: context,
                                enableDrag: false,
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return const Padding(
                                      padding: EdgeInsets.only(
                                          top: 100),
                                      child: BottomSheetMoney());
                                },
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            Container(
              height: 26,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Style.Colors.blue500),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 4.0, left: 4.0),
                    child: const Text("リアルタイム",
                        style: TextStyle(
                            fontFamily: 'HiraginoMaruGothicStdN',
                            fontSize: 10,
                            color: Colors.black,
                            overflow: TextOverflow.clip)),
                  ),
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(9),
                      child: FloatingActionButton(
                          backgroundColor: Style.Colors.blue300,
                          onPressed: () {},
                          child: SvgPicture.asset(
                            Images.icon_button_pullDown,
                            height: 16.0,
                            width: 16.0,
                          )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 7.0),
            Container(
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.transparent),
                color: Colors.transparent,
              ),
              child: AppCheckBox(
                title: "ローソク足",
                onTap: () {
                  setState(() {
                    isCheckedShowChartShould = !isCheckedShowChartShould;
                  });
                },
                isChecked: isCheckedShowChartShould,
              ),
            ),
            const SizedBox(width: 8.0),
            Container(
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.transparent),
                color: Colors.transparent,
              ),
              child: AppCheckBox(
                title: "移動平均線",
                onTap: () {
                  setState(() {
                    isCheckedShowChartAverage = !isCheckedShowChartAverage;
                  });
                },
                isChecked: isCheckedShowChartAverage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

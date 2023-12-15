import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:demo_ui_karu/resources/colors.dart' as Style;

import '../../../resources/images.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    List<String> tabList = ["スピード注文", "新規注文", "決済注文（建玉照会）"];
    return SizedBox(
      height: 56.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 3.0),
                  child: SvgPicture.asset(
                    Images.icon_derby,
                    height: 15.0,
                    width: 15.0,
                  ),
                ),
                const Text("999999",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Style.Colors.orange500,
                      fontSize: 16,
                      fontFamily: 'Solomon',
                    )),
              ],
            ),
          ),
          const SizedBox(height: 7.0),
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            height: 20,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Text("総資産",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'HiraginoMaruGothicStdN')),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerRight,
                          child: RichText(
                              overflow: TextOverflow.clip,
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "1,000,000",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: 'Solomon',
                                      )),
                                  TextSpan(
                                      text: "円",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'HiraginoMaruGothicStdN',
                                      )),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Text("今日の損益",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'HiraginoMaruGothicStdN',
                          )),
                      Expanded(
                        child: FittedBox(
                          alignment: Alignment.centerRight,
                          fit: BoxFit.contain,
                          child: RichText(
                              overflow: TextOverflow.clip,
                              text: const TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "95,830",
                                      style: TextStyle(
                                        color: Style.Colors.green500,
                                        fontSize: 16,
                                        fontFamily: 'Solomon',
                                      )),
                                  TextSpan(
                                      text: "円",
                                      style: TextStyle(
                                        color: Style.Colors.green500,
                                        fontSize: 10,
                                        fontFamily: 'HiraginoMaruGothicStdN',
                                      )),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 7.0),
          SizedBox(
              height: 20.0,
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.orange,
                automaticIndicatorColorAdjustment: true,
                indicatorWeight: 2.0,
                labelColor: Colors.orange,
                isScrollable: true,
                tabs: tabList.map((e) {
                  return Text(
                    e.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'HiraginoMaruGothicStdN',
                    ),
                  );
                }).toList(),
                onTap: (int index) {
                  if (index == 0) {}
                  if (index == 2) {}
                  if (index == 3) {}
                },
              ))
        ],
      ),
    );
  }
}

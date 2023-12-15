import 'package:demo_ui_karu/components/button_updown.dart';
import 'package:demo_ui_karu/feature/home/home_bloc.dart';
import 'package:demo_ui_karu/feature/home/home_state.dart';
import 'package:demo_ui_karu/feature/home/tab_bar/chart/chart_widget.dart';
import 'package:demo_ui_karu/feature/home/table_data/table_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';
import 'home_event.dart';
import 'tab_bar/tabbar.dart';
import '../../resources/colors.dart' as Style;
import 'footer/footer_widget.dart';
import 'header/header_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends TeqWidgetState<HomeBloc, HomeWidget>
    with BasePullToRefreshMixin<HomeWidget> {
  bool pinned = true;
  bool snap = true;
  bool floating = true;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => bloc),
      ],
      child: BlocConsumer<HomeBloc, HomeState>(
        bloc: bloc,
        builder: _buildBody,
        listener: _handleAction,
      ),
    );
  }

  Widget _buildBody(BuildContext context, HomeState state) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return Scaffold(
        backgroundColor: Style.Colors.background,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(73.0),
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
            child: const SizedBox(height: 73.0, child: HeaderWidget()),
          ),
        ),
        body: CustomScrollView(
          scrollDirection: Axis.vertical,
          slivers: [
            // SliverAppBar(
            //   toolbarHeight: 30.0,
            //     pinned: pinned,
            //     snap: snap,
            //     floating: floating,
            //     backgroundColor: Colors.yellow,
            //     collapsedHeight: 49.0,
            //     expandedHeight: 0,
            //     flexibleSpace:
            //         const SizedBox(height: 49.0, child: HeaderWidget())),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    // Tab bar
                    const ViewChart(),
                    //btn UpDown
                    const ButtonUpDown(),
                    //Table
                    const TableDataWidget(),
                    //Footer
                    Container(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 0.0),
                        child: FooterWidget(
                          showButton: state.showButton,
                          onChanged: (value) {
                            addEvent(ChangeShowButton(value));
                          },
                        )),
                  ],
                )
              ]),
            ),
          ],
        ),
      );
    });
  }

  @override
  HomeBloc createBloc() => HomeBloc();

  @override
  BaseBloc get refresherBloc => bloc;
}

void _handleAction(BuildContext context, HomeState state) {}

import 'package:demo_ui_karu/feature/home/home_state.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

import 'home_event.dart';



class HomeBloc extends BaseBloc<HomeState> {


  HomeBloc() : super(HomeState(isLoading: true, showButton: false));

  @override
  Stream<HomeState> mapEventToState(BaseEvent event) async* {
    if(event is InitialEvent) {
      yield state.copyWith(isLoading: true);
    }
    if(event is ChangeShowButton) {
      yield state.copyWith(isLoading: false, showButton: event.show);
    }
  }
}
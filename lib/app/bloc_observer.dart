import 'package:teq_flutter_core/teq_flutter_core.dart';
import 'package:bloc/bloc.dart';

class SimpleBlocObserve extends TeqBlocObserver {
  @override
  void onHandleError(Object error) async {
    //TODO show error dialog
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d(event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (!isTeqCoreBloc(bloc)) logger.d(change);
  }
}

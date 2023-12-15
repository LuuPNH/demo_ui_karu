import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'table_data_event.dart';
part 'table_data_state.dart';

class TableDataBloc extends Bloc<TableDataEvent, TableDataState> {
  TableDataBloc() : super(TableDataInitial()) {
    on<TableDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

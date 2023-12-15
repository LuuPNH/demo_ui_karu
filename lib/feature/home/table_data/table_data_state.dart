part of 'table_data_bloc.dart';

abstract class TableDataState extends Equatable {
  const TableDataState();
}

class TableDataInitial extends TableDataState {
  @override
  List<Object> get props => [];
}

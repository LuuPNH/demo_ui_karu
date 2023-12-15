part of 'bottom_sheet_bloc.dart';

abstract class BottomSheetState extends Equatable {
  const BottomSheetState();
}

class BottomSheetInitial extends BottomSheetState {
  @override
  List<Object> get props => [];
}

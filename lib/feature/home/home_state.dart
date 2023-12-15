import 'package:teq_flutter_core/teq_flutter_core.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
class HomeState extends BaseState {
  final error;
  final bool isLoading;
  final bool showButton;

  HomeState({
    this.isLoading = false,
    this.error,
    this.showButton = false
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    error,
    isLoading,
    showButton
  ];


  HomeState copyWith({
    bool? isLoading,
    var error,
    bool? showButton,
  }) =>
      HomeState(
        isLoading: isLoading ?? false,
        error: error ?? this.error,
        showButton: showButton ?? this.showButton,
      );
}


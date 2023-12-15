import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

@immutable
class ChangeShowButton extends BaseEvent {
  final bool show;

  ChangeShowButton(this.show);
}



import 'package:equatable/equatable.dart';

class ItemMoney extends Equatable {
  final String? textTile;
  final String? flagFirst;
  final String? flagSecond;
  final String? nameFlag;
  final String? textBtnUp;
  final String? textBtnDown;
  final String? textBtnMid;
  final String? textLastFirst;
  final String? textLastSecond;
  final String? textLastThird;
  final double? valueLastFirst;
  final double? valueLastSecond;
  final double? valueLastThird;

  const ItemMoney({
      this.textTile,
      this.flagFirst,
      this.flagSecond,
      this.nameFlag,
      this.textBtnUp,
      this.textBtnDown,
      this.textBtnMid,
      this.textLastFirst,
      this.textLastSecond,
      this.textLastThird,
      this.valueLastFirst,
      this.valueLastSecond,
      this.valueLastThird
  });

  @override
  List<Object?> get props => [
        textTile,
        flagFirst,
        flagSecond,
        nameFlag,
        textBtnUp,
        textBtnDown,
        textBtnMid,
        textLastFirst,
        textLastSecond,
        textLastThird,
        valueLastFirst,
        valueLastSecond,
        valueLastThird
      ];

  ItemMoney copyWith({
    String? textTile,
    String? flagFirst,
    String? flagSecond,
    String? nameFlag,
    String? textBtnUp,
    String? textBtnDown,
    String? textBtnMid,
    String? textLastFirst,
    String? textLastSecond,
    String? textLastThird,
    double? valueLastFirst,
    double? valueLastSecond,
    double? valueLastThird,
  }) {
    return ItemMoney(
        textTile: textTile ?? this.textTile,
        flagFirst: flagFirst ?? this.flagFirst,
        flagSecond: flagSecond ?? this.flagSecond,
        nameFlag: nameFlag ?? this.nameFlag,
        textBtnUp: textBtnUp ?? this.textBtnUp,
        textBtnDown: textBtnDown ?? this.textBtnDown,
        textBtnMid: textBtnMid ?? this.textBtnMid,
        textLastFirst: textLastFirst ?? this.textLastFirst,
        textLastSecond: textLastSecond ?? this.textLastSecond,
        textLastThird: textLastThird ?? this.textLastThird,
        valueLastFirst: valueLastFirst ?? this.valueLastFirst,
        valueLastSecond: valueLastSecond ?? this.valueLastSecond,
        valueLastThird: valueLastThird ?? this.valueLastThird);
  }
}

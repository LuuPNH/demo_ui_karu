
extension CheckTextExtension on String? {
  bool get isNullOrEmpty => this?.isNotEmpty ?? false;
}

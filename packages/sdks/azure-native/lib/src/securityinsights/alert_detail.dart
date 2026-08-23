/// Alert detail
enum AlertDetail {
  valueDisplayName("DisplayName"),
  valueSeverity("Severity");

  const AlertDetail(this.wireValue);
  final String wireValue;

  static AlertDetail fromValue(String value) {
    for (final item in AlertDetail.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertDetail value: $value');
  }
}

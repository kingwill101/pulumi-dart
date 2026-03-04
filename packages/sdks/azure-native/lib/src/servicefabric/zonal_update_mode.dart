/// Indicates the update mode for Cross Az clusters.
enum ZonalUpdateMode {
  valueStandard("Standard"),
  valueFast("Fast");

  const ZonalUpdateMode(this.wireValue);
  final String wireValue;

  static ZonalUpdateMode fromValue(String value) {
    for (final item in ZonalUpdateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZonalUpdateMode value: $value');
  }
}

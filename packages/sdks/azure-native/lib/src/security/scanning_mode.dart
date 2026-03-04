/// The scanning mode for the VM scan.
enum ScanningMode {
  valueDefault("Default");

  const ScanningMode(this.wireValue);
  final String wireValue;

  static ScanningMode fromValue(String value) {
    for (final item in ScanningMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanningMode value: $value');
  }
}

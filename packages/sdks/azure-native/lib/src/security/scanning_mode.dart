/// The scanning mode for the VM scan.
enum ScanningMode {
  valueDefault("Default");

  const ScanningMode(this.value);
  final String value;

  static ScanningMode fromValue(String value) {
    for (final item in ScanningMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanningMode value: $value');
  }
}


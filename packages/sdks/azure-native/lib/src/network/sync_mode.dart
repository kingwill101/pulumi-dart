/// Backend address synchronous mode for the backend pool
enum SyncMode {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const SyncMode(this.value);
  final String value;

  static SyncMode fromValue(String value) {
    for (final item in SyncMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncMode value: $value');
  }
}


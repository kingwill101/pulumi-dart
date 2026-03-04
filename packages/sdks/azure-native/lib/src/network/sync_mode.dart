/// Backend address synchronous mode for the backend pool
enum SyncMode {
  valueAutomatic("Automatic"),
  valueManual("Manual");

  const SyncMode(this.wireValue);
  final String wireValue;

  static SyncMode fromValue(String value) {
    for (final item in SyncMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SyncMode value: $value');
  }
}

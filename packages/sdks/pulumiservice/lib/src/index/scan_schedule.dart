enum ScanSchedule {
  none("none"),
  value12h("12h"),
  daily("daily");

  const ScanSchedule(this.wireValue);
  final String wireValue;

  static ScanSchedule fromValue(String value) {
    for (final item in ScanSchedule.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanSchedule value: $value');
  }
}

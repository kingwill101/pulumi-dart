enum ScanSchedule {
  valueNone("none"),
  valueDaily("daily");

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

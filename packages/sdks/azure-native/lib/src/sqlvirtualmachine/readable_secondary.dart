/// Replica readable secondary mode in availability group.
enum ReadableSecondary {
  no("No"),
  all("All"),
  readOnly("Read_Only");

  const ReadableSecondary(this.wireValue);
  final String wireValue;

  static ReadableSecondary fromValue(String value) {
    for (final item in ReadableSecondary.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadableSecondary value: $value');
  }
}


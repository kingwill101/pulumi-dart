/// Replica readable secondary mode in availability group.
enum ReadableSecondary {
  no("No"),
  all("All"),
  readOnly("Read_Only");

  const ReadableSecondary(this.value);
  final String value;

  static ReadableSecondary fromValue(String value) {
    for (final item in ReadableSecondary.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReadableSecondary value: $value');
  }
}


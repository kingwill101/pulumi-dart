/// An enum that represents the format of the local timestamp property that needs to be set.
enum LocalTimestampFormat {
  valueEmbedded("Embedded");

  const LocalTimestampFormat(this.value);
  final String value;

  static LocalTimestampFormat fromValue(String value) {
    for (final item in LocalTimestampFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalTimestampFormat value: $value');
  }
}


/// Gets or sets the retry strategy to be used.
enum RetryType {
  valueNone("None"),
  valueFixed("Fixed");

  const RetryType(this.wireValue);
  final String wireValue;

  static RetryType fromValue(String value) {
    for (final item in RetryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetryType value: $value');
  }
}


/// Gets or sets the retry strategy to be used.
enum RetryType {
  valueNone("None"),
  valueFixed("Fixed");

  const RetryType(this.value);
  final String value;

  static RetryType fromValue(String value) {
    for (final item in RetryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RetryType value: $value');
  }
}


/// Specifies refill policy of the pool.
enum RefillPolicy {
  always("always");

  const RefillPolicy(this.wireValue);
  final String wireValue;

  static RefillPolicy fromValue(String value) {
    for (final item in RefillPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RefillPolicy value: $value');
  }
}


/// Supported operations.
enum SupportedOperations {
  notSpecified("NotSpecified"),
  get("Get"),
  delete("Delete");

  const SupportedOperations(this.value);
  final String value;

  static SupportedOperations fromValue(String value) {
    for (final item in SupportedOperations.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedOperations value: $value');
  }
}


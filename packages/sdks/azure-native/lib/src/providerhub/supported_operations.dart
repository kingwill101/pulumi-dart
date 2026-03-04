/// Supported operations.
enum SupportedOperations {
  notSpecified("NotSpecified"),
  get("Get"),
  delete("Delete");

  const SupportedOperations(this.wireValue);
  final String wireValue;

  static SupportedOperations fromValue(String value) {
    for (final item in SupportedOperations.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedOperations value: $value');
  }
}

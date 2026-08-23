/// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
enum UriOverrideScheme {
  schemeUnspecified("SCHEME_UNSPECIFIED"),
  http("HTTP"),
  https("HTTPS");

  const UriOverrideScheme(this.wireValue);
  final String wireValue;

  static UriOverrideScheme fromValue(String value) {
    for (final item in UriOverrideScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideScheme value: $value');
  }
}

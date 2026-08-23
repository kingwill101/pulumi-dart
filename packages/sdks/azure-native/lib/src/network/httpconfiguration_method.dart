/// The HTTP method to use.
enum HTTPConfigurationMethod {
  valueGet("Get"),
  valuePost("Post");

  const HTTPConfigurationMethod(this.wireValue);
  final String wireValue;

  static HTTPConfigurationMethod fromValue(String value) {
    for (final item in HTTPConfigurationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPConfigurationMethod value: $value');
  }
}

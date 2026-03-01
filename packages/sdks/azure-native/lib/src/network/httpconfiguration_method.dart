/// The HTTP method to use.
enum HTTPConfigurationMethod {
  valueGet("Get"),
  valuePost("Post");

  const HTTPConfigurationMethod(this.value);
  final String value;

  static HTTPConfigurationMethod fromValue(String value) {
    for (final item in HTTPConfigurationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HTTPConfigurationMethod value: $value');
  }
}


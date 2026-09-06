import 'package:pulumi/pulumi.dart' as pulumi;

/// The HTTP method to use.
enum HTTPConfigurationMethod implements pulumi.PulumiEnum<String> {
  valueGet("Get"),
  valuePost("Post");

  const HTTPConfigurationMethod(this.wireValue);
  @override
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

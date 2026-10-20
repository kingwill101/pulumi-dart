import 'package:pulumi/pulumi.dart' as pulumi;

/// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
enum UriOverrideSchemeCloudtasksV2beta2 implements pulumi.PulumiEnum<String> {
  schemeUnspecified("SCHEME_UNSPECIFIED"),
  http("HTTP"),
  https("HTTPS");

  const UriOverrideSchemeCloudtasksV2beta2(this.wireValue);
  @override
  final String wireValue;

  static UriOverrideSchemeCloudtasksV2beta2 fromValue(String value) {
    for (final item in UriOverrideSchemeCloudtasksV2beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UriOverrideSchemeCloudtasksV2beta2 value: $value');
  }
}

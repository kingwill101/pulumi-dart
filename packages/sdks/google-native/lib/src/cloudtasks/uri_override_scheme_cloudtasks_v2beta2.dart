/// Scheme override. When specified, the task URI scheme is replaced by the provided value (HTTP or HTTPS).
enum UriOverrideSchemeCloudtasksV2beta2 {
  schemeUnspecified("SCHEME_UNSPECIFIED"),
  http("HTTP"),
  https("HTTPS");

  const UriOverrideSchemeCloudtasksV2beta2(this.wireValue);
  final String wireValue;

  static UriOverrideSchemeCloudtasksV2beta2 fromValue(String value) {
    for (final item in UriOverrideSchemeCloudtasksV2beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown UriOverrideSchemeCloudtasksV2beta2 value: $value',
    );
  }
}

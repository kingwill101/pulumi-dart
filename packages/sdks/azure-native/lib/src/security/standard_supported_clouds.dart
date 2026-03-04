/// The cloud that the standard is supported on.
enum StandardSupportedClouds {
  valueAWS("AWS"),
  valueGCP("GCP");

  const StandardSupportedClouds(this.wireValue);
  final String wireValue;

  static StandardSupportedClouds fromValue(String value) {
    for (final item in StandardSupportedClouds.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StandardSupportedClouds value: $value');
  }
}

/// The cloud that the standard is supported on.
enum StandardSupportedClouds {
  aWS("AWS"),
  gCP("GCP");

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

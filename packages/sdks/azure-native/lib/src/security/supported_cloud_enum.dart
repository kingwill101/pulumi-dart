/// Relevant cloud for the custom assessment automation.
enum SupportedCloudEnum {
  valueAWS("AWS"),
  valueGCP("GCP");

  const SupportedCloudEnum(this.wireValue);
  final String wireValue;

  static SupportedCloudEnum fromValue(String value) {
    for (final item in SupportedCloudEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedCloudEnum value: $value');
  }
}

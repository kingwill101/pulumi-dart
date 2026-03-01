/// Relevant cloud for the custom assessment automation.
enum SupportedCloudEnum {
  valueAWS("AWS"),
  valueGCP("GCP");

  const SupportedCloudEnum(this.value);
  final String value;

  static SupportedCloudEnum fromValue(String value) {
    for (final item in SupportedCloudEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SupportedCloudEnum value: $value');
  }
}


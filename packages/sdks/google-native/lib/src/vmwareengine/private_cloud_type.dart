/// Optional. Type of the private cloud. Defaults to STANDARD.
enum PrivateCloudType {
  standard("STANDARD"),
  timeLimited("TIME_LIMITED"),
  stretched("STRETCHED");

  const PrivateCloudType(this.wireValue);
  final String wireValue;

  static PrivateCloudType fromValue(String value) {
    for (final item in PrivateCloudType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrivateCloudType value: $value');
  }
}

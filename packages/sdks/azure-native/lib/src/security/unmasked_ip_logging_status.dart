/// Unmasked IP address logging status
enum UnmaskedIpLoggingStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const UnmaskedIpLoggingStatus(this.wireValue);
  final String wireValue;

  static UnmaskedIpLoggingStatus fromValue(String value) {
    for (final item in UnmaskedIpLoggingStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmaskedIpLoggingStatus value: $value');
  }
}

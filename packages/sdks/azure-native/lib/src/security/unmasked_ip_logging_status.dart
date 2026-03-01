/// Unmasked IP address logging status
enum UnmaskedIpLoggingStatus {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const UnmaskedIpLoggingStatus(this.value);
  final String value;

  static UnmaskedIpLoggingStatus fromValue(String value) {
    for (final item in UnmaskedIpLoggingStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UnmaskedIpLoggingStatus value: $value');
  }
}


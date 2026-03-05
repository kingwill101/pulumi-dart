/// Required. A status for this configuration.
enum DiscoveryConfigStatus {
  statusUnspecified("STATUS_UNSPECIFIED"),
  running("RUNNING"),
  paused("PAUSED");

  const DiscoveryConfigStatus(this.wireValue);
  final String wireValue;

  static DiscoveryConfigStatus fromValue(String value) {
    for (final item in DiscoveryConfigStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoveryConfigStatus value: $value');
  }
}


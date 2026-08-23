/// Overall health status. Overall status is derived based on the status of each sub level resources.
enum ResourceInfoStatus {
  healthStatusUnspecified("HEALTH_STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  unhealthy("UNHEALTHY"),
  unresponsive("UNRESPONSIVE"),
  degraded("DEGRADED");

  const ResourceInfoStatus(this.wireValue);
  final String wireValue;

  static ResourceInfoStatus fromValue(String value) {
    for (final item in ResourceInfoStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceInfoStatus value: $value');
  }
}

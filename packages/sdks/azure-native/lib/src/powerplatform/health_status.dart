/// The health status of the resource.
enum HealthStatus {
  valueUndetermined("Undetermined"),
  valueHealthy("Healthy"),
  valueWarning("Warning"),
  valueUnhealthy("Unhealthy");

  const HealthStatus(this.value);
  final String value;

  static HealthStatus fromValue(String value) {
    for (final item in HealthStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthStatus value: $value');
  }
}


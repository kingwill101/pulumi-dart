/// Resource Health Status
enum ResourceHealthStatus {
  valueHealthy("Healthy"),
  valueTransientDegraded("TransientDegraded"),
  valuePersistentDegraded("PersistentDegraded"),
  valueTransientUnhealthy("TransientUnhealthy"),
  valuePersistentUnhealthy("PersistentUnhealthy"),
  valueInvalid("Invalid");

  const ResourceHealthStatus(this.wireValue);
  final String wireValue;

  static ResourceHealthStatus fromValue(String value) {
    for (final item in ResourceHealthStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceHealthStatus value: $value');
  }
}


/// Last backup operation status. Possible values: Healthy, Unhealthy.
enum LastBackupStatus {
  valueInvalid("Invalid"),
  valueHealthy("Healthy"),
  valueUnhealthy("Unhealthy"),
  valueIRPending("IRPending");

  const LastBackupStatus(this.value);
  final String value;

  static LastBackupStatus fromValue(String value) {
    for (final item in LastBackupStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LastBackupStatus value: $value');
  }
}


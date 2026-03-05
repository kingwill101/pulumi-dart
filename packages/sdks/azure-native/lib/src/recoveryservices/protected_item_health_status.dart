/// Health status of the backup item, evaluated based on last heartbeat received
enum ProtectedItemHealthStatus {
  valueInvalid("Invalid"),
  valueHealthy("Healthy"),
  valueUnhealthy("Unhealthy"),
  valueNotReachable("NotReachable"),
  valueIRPending("IRPending");

  const ProtectedItemHealthStatus(this.wireValue);
  final String wireValue;

  static ProtectedItemHealthStatus fromValue(String value) {
    for (final item in ProtectedItemHealthStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectedItemHealthStatus value: $value');
  }
}


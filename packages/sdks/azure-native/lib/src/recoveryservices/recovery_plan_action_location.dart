/// The fabric location.
enum RecoveryPlanActionLocation {
  valuePrimary("Primary"),
  valueRecovery("Recovery");

  const RecoveryPlanActionLocation(this.value);
  final String value;

  static RecoveryPlanActionLocation fromValue(String value) {
    for (final item in RecoveryPlanActionLocation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryPlanActionLocation value: $value');
  }
}


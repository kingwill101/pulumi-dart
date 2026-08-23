/// The fabric location.
enum RecoveryPlanActionLocation {
  valuePrimary("Primary"),
  valueRecovery("Recovery");

  const RecoveryPlanActionLocation(this.wireValue);
  final String wireValue;

  static RecoveryPlanActionLocation fromValue(String value) {
    for (final item in RecoveryPlanActionLocation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryPlanActionLocation value: $value');
  }
}

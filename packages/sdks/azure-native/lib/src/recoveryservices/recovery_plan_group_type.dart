/// The group type.
enum RecoveryPlanGroupType {
  valueShutdown("Shutdown"),
  valueBoot("Boot"),
  valueFailover("Failover");

  const RecoveryPlanGroupType(this.value);
  final String value;

  static RecoveryPlanGroupType fromValue(String value) {
    for (final item in RecoveryPlanGroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryPlanGroupType value: $value');
  }
}


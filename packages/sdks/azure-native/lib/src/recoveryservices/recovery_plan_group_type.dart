/// The group type.
enum RecoveryPlanGroupType {
  valueShutdown("Shutdown"),
  valueBoot("Boot"),
  valueFailover("Failover");

  const RecoveryPlanGroupType(this.wireValue);
  final String wireValue;

  static RecoveryPlanGroupType fromValue(String value) {
    for (final item in RecoveryPlanGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecoveryPlanGroupType value: $value');
  }
}


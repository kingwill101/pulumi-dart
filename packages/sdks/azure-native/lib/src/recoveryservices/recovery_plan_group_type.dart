import 'package:pulumi/pulumi.dart' as pulumi;

/// The group type.
enum RecoveryPlanGroupType implements pulumi.PulumiEnum<String> {
  valueShutdown("Shutdown"),
  valueBoot("Boot"),
  valueFailover("Failover");

  const RecoveryPlanGroupType(this.wireValue);
  @override
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

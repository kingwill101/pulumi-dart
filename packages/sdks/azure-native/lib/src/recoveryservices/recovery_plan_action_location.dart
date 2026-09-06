import 'package:pulumi/pulumi.dart' as pulumi;

/// The fabric location.
enum RecoveryPlanActionLocation implements pulumi.PulumiEnum<String> {
  valuePrimary("Primary"),
  valueRecovery("Recovery");

  const RecoveryPlanActionLocation(this.wireValue);
  @override
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

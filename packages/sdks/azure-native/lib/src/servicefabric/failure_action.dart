import 'package:pulumi/pulumi.dart' as pulumi;

/// The compensating action to perform when a Monitored upgrade encounters monitoring policy or health policy violations. Invalid indicates the failure action is invalid. Rollback specifies that the upgrade will start rolling back automatically. Manual indicates that the upgrade will switch to UnmonitoredManual upgrade mode.
enum FailureAction implements pulumi.PulumiEnum<String> {
  valueRollback("Rollback"),
  valueManual("Manual");

  const FailureAction(this.wireValue);
  @override
  final String wireValue;

  static FailureAction fromValue(String value) {
    for (final item in FailureAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailureAction value: $value');
  }
}

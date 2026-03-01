/// The compensating action to perform when a Monitored upgrade encounters monitoring policy or health policy violations. Invalid indicates the failure action is invalid. Rollback specifies that the upgrade will start rolling back automatically. Manual indicates that the upgrade will switch to UnmonitoredManual upgrade mode.
enum FailureAction {
  valueRollback("Rollback"),
  valueManual("Manual");

  const FailureAction(this.value);
  final String value;

  static FailureAction fromValue(String value) {
    for (final item in FailureAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FailureAction value: $value');
  }
}


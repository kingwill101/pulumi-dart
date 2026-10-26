import 'package:pulumi/pulumi.dart' as pulumi;

/// Action. Rolloback or Upgrade.
enum UpgradeHistoryEntryAction implements pulumi.PulumiEnum<String> {
  actionUnspecified("ACTION_UNSPECIFIED"),
  upgrade("UPGRADE"),
  rollback("ROLLBACK");

  const UpgradeHistoryEntryAction(this.wireValue);
  @override
  final String wireValue;

  static UpgradeHistoryEntryAction fromValue(String value) {
    for (final item in UpgradeHistoryEntryAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeHistoryEntryAction value: $value');
  }
}

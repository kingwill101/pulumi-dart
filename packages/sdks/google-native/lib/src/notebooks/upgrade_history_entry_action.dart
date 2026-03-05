/// Action. Rolloback or Upgrade.
enum UpgradeHistoryEntryAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  upgrade("UPGRADE"),
  rollback("ROLLBACK");

  const UpgradeHistoryEntryAction(this.wireValue);
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


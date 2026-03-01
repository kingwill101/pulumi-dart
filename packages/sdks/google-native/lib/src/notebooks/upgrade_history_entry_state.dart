/// The state of this instance upgrade history entry.
enum UpgradeHistoryEntryState {
  stateUnspecified("STATE_UNSPECIFIED"),
  started("STARTED"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const UpgradeHistoryEntryState(this.value);
  final String value;

  static UpgradeHistoryEntryState fromValue(String value) {
    for (final item in UpgradeHistoryEntryState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeHistoryEntryState value: $value');
  }
}


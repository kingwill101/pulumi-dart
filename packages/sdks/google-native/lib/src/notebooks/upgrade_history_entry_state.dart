/// The state of this instance upgrade history entry.
enum UpgradeHistoryEntryState {
  stateUnspecified("STATE_UNSPECIFIED"),
  started("STARTED"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const UpgradeHistoryEntryState(this.wireValue);
  final String wireValue;

  static UpgradeHistoryEntryState fromValue(String value) {
    for (final item in UpgradeHistoryEntryState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpgradeHistoryEntryState value: $value');
  }
}

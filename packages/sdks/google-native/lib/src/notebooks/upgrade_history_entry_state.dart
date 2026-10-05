import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of this instance upgrade history entry.
enum UpgradeHistoryEntryState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  started("STARTED"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const UpgradeHistoryEntryState(this.wireValue);
  @override
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

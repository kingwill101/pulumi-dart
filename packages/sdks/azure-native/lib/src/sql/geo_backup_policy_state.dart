/// The state of the geo backup policy.
enum GeoBackupPolicyState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GeoBackupPolicyState(this.wireValue);
  final String wireValue;

  static GeoBackupPolicyState fromValue(String value) {
    for (final item in GeoBackupPolicyState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GeoBackupPolicyState value: $value');
  }
}


import 'package:pulumi/pulumi.dart' as pulumi;

/// The state of the geo backup policy.
enum GeoBackupPolicyState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const GeoBackupPolicyState(this.wireValue);
  @override
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

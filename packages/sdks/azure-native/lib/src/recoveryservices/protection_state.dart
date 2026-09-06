import 'package:pulumi/pulumi.dart' as pulumi;

/// Backup state of this backup item.
enum ProtectionState implements pulumi.PulumiEnum<String> {
  valueInvalid("Invalid"),
  valueIRPending("IRPending"),
  valueProtected("Protected"),
  valueProtectionError("ProtectionError"),
  valueProtectionStopped("ProtectionStopped"),
  valueProtectionPaused("ProtectionPaused"),
  valueBackupsSuspended("BackupsSuspended");

  const ProtectionState(this.wireValue);
  @override
  final String wireValue;

  static ProtectionState fromValue(String value) {
    for (final item in ProtectionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectionState value: $value');
  }
}

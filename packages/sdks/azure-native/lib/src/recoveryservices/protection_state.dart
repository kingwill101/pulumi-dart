/// Backup state of this backup item.
enum ProtectionState {
  valueInvalid("Invalid"),
  valueIRPending("IRPending"),
  valueProtected("Protected"),
  valueProtectionError("ProtectionError"),
  valueProtectionStopped("ProtectionStopped"),
  valueProtectionPaused("ProtectionPaused"),
  valueBackupsSuspended("BackupsSuspended");

  const ProtectionState(this.wireValue);
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


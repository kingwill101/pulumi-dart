/// Protection state of the backup engine
enum ProtectedItemState {
  valueInvalid("Invalid"),
  valueIRPending("IRPending"),
  valueProtected("Protected"),
  valueProtectionError("ProtectionError"),
  valueProtectionStopped("ProtectionStopped"),
  valueProtectionPaused("ProtectionPaused"),
  valueBackupsSuspended("BackupsSuspended");

  const ProtectedItemState(this.wireValue);
  final String wireValue;

  static ProtectedItemState fromValue(String value) {
    for (final item in ProtectedItemState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectedItemState value: $value');
  }
}


/// Controls whether the domain can be transferred to another registrar.
enum ManagementSettingsTransferLockState {
  transferLockStateUnspecified("TRANSFER_LOCK_STATE_UNSPECIFIED"),
  unlocked("UNLOCKED"),
  locked("LOCKED");

  const ManagementSettingsTransferLockState(this.wireValue);
  final String wireValue;

  static ManagementSettingsTransferLockState fromValue(String value) {
    for (final item in ManagementSettingsTransferLockState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagementSettingsTransferLockState value: $value',
    );
  }
}

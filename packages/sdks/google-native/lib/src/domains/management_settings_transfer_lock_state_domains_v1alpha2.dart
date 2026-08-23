/// Controls whether the domain can be transferred to another registrar.
enum ManagementSettingsTransferLockStateDomainsV1alpha2 {
  transferLockStateUnspecified("TRANSFER_LOCK_STATE_UNSPECIFIED"),
  unlocked("UNLOCKED"),
  locked("LOCKED");

  const ManagementSettingsTransferLockStateDomainsV1alpha2(this.wireValue);
  final String wireValue;

  static ManagementSettingsTransferLockStateDomainsV1alpha2 fromValue(String value) {
    for (final item in ManagementSettingsTransferLockStateDomainsV1alpha2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagementSettingsTransferLockStateDomainsV1alpha2 value: $value');
  }
}

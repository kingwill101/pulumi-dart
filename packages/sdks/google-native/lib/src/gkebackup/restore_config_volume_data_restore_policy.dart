/// Optional. Specifies the mechanism to be used to restore volume data. Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as NO_VOLUME_DATA_RESTORATION).
enum RestoreConfigVolumeDataRestorePolicy {
  volumeDataRestorePolicyUnspecified("VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED"),
  restoreVolumeDataFromBackup("RESTORE_VOLUME_DATA_FROM_BACKUP"),
  reuseVolumeHandleFromBackup("REUSE_VOLUME_HANDLE_FROM_BACKUP"),
  noVolumeDataRestoration("NO_VOLUME_DATA_RESTORATION");

  const RestoreConfigVolumeDataRestorePolicy(this.wireValue);
  final String wireValue;

  static RestoreConfigVolumeDataRestorePolicy fromValue(String value) {
    for (final item in RestoreConfigVolumeDataRestorePolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RestoreConfigVolumeDataRestorePolicy value: $value');
  }
}

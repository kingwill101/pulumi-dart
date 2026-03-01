/// The BackupStorageAccessTier for the LTR backups
enum BackupStorageAccessTier {
  valueHot("Hot"),
  valueArchive("Archive");

  const BackupStorageAccessTier(this.value);
  final String value;

  static BackupStorageAccessTier fromValue(String value) {
    for (final item in BackupStorageAccessTier.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupStorageAccessTier value: $value');
  }
}


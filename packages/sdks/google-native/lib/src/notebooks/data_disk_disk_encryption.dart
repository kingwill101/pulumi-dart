/// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
enum DataDiskDiskEncryption {
  diskEncryptionUnspecified("DISK_ENCRYPTION_UNSPECIFIED"),
  gmek("GMEK"),
  cmek("CMEK");

  const DataDiskDiskEncryption(this.value);
  final String value;

  static DataDiskDiskEncryption fromValue(String value) {
    for (final item in DataDiskDiskEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataDiskDiskEncryption value: $value');
  }
}


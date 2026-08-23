/// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
enum DataDiskDiskEncryption {
  diskEncryptionUnspecified("DISK_ENCRYPTION_UNSPECIFIED"),
  gmek("GMEK"),
  cmek("CMEK");

  const DataDiskDiskEncryption(this.wireValue);
  final String wireValue;

  static DataDiskDiskEncryption fromValue(String value) {
    for (final item in DataDiskDiskEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataDiskDiskEncryption value: $value');
  }
}

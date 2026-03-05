/// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
enum BootDiskDiskEncryption {
  diskEncryptionUnspecified("DISK_ENCRYPTION_UNSPECIFIED"),
  gmek("GMEK"),
  cmek("CMEK");

  const BootDiskDiskEncryption(this.wireValue);
  final String wireValue;

  static BootDiskDiskEncryption fromValue(String value) {
    for (final item in BootDiskDiskEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootDiskDiskEncryption value: $value');
  }
}


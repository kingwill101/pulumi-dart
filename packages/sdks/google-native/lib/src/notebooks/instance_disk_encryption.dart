/// Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
enum InstanceDiskEncryption {
  diskEncryptionUnspecified("DISK_ENCRYPTION_UNSPECIFIED"),
  gmek("GMEK"),
  cmek("CMEK");

  const InstanceDiskEncryption(this.wireValue);
  final String wireValue;

  static InstanceDiskEncryption fromValue(String value) {
    for (final item in InstanceDiskEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceDiskEncryption value: $value');
  }
}

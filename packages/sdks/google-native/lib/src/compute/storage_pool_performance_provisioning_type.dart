/// Provisioning type of the performance-related parameters of the pool, such as throughput and IOPS.
enum StoragePoolPerformanceProvisioningType {
  advanced("ADVANCED"),
  standard("STANDARD"),
  unspecified("UNSPECIFIED");

  const StoragePoolPerformanceProvisioningType(this.wireValue);
  final String wireValue;

  static StoragePoolPerformanceProvisioningType fromValue(String value) {
    for (final item in StoragePoolPerformanceProvisioningType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StoragePoolPerformanceProvisioningType value: $value');
  }
}

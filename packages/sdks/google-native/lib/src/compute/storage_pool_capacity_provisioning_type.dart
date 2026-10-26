import 'package:pulumi/pulumi.dart' as pulumi;

/// Provisioning type of the byte capacity of the pool.
enum StoragePoolCapacityProvisioningType implements pulumi.PulumiEnum<String> {
  advanced("ADVANCED"),
  standard("STANDARD"),
  unspecified("UNSPECIFIED");

  const StoragePoolCapacityProvisioningType(this.wireValue);
  @override
  final String wireValue;

  static StoragePoolCapacityProvisioningType fromValue(String value) {
    for (final item in StoragePoolCapacityProvisioningType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StoragePoolCapacityProvisioningType value: $value');
  }
}

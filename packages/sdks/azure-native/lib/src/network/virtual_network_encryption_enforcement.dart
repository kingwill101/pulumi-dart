import 'package:pulumi/pulumi.dart' as pulumi;

/// If the encrypted VNet allows VM that does not support encryption. This field is for future support, AllowUnencrypted is the only supported value at general availability.
enum VirtualNetworkEncryptionEnforcement implements pulumi.PulumiEnum<String> {
  valueDropUnencrypted("DropUnencrypted"),
  valueAllowUnencrypted("AllowUnencrypted");

  const VirtualNetworkEncryptionEnforcement(this.wireValue);
  @override
  final String wireValue;

  static VirtualNetworkEncryptionEnforcement fromValue(String value) {
    for (final item in VirtualNetworkEncryptionEnforcement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualNetworkEncryptionEnforcement value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

enum DevicePolicyAllowedEncryptionStatusesItem implements pulumi.PulumiEnum<String> {
  encryptionUnspecified("ENCRYPTION_UNSPECIFIED"),
  encryptionUnsupported("ENCRYPTION_UNSUPPORTED"),
  unencrypted("UNENCRYPTED"),
  encrypted("ENCRYPTED");

  const DevicePolicyAllowedEncryptionStatusesItem(this.wireValue);
  @override
  final String wireValue;

  static DevicePolicyAllowedEncryptionStatusesItem fromValue(String value) {
    for (final item in DevicePolicyAllowedEncryptionStatusesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevicePolicyAllowedEncryptionStatusesItem value: $value');
  }
}

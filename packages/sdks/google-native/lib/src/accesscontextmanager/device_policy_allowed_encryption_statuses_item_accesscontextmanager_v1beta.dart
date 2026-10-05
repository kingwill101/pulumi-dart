import 'package:pulumi/pulumi.dart' as pulumi;

enum DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta implements pulumi.PulumiEnum<String> {
  encryptionUnspecified("ENCRYPTION_UNSPECIFIED"),
  encryptionUnsupported("ENCRYPTION_UNSUPPORTED"),
  unencrypted("UNENCRYPTED"),
  encrypted("ENCRYPTED");

  const DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta(this.wireValue);
  @override
  final String wireValue;

  static DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta fromValue(String value) {
    for (final item in DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DevicePolicyAllowedEncryptionStatusesItemAccesscontextmanagerV1beta value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity to use. Values can be systemAssignedIdentity, userAssignedIdentity, or delegatedResourceIdentity.
enum KeyEncryptionKeyIdentityType implements pulumi.PulumiEnum<String> {
  systemAssignedIdentity("SystemAssignedIdentity"),
  userAssignedIdentity("UserAssignedIdentity");

  const KeyEncryptionKeyIdentityType(this.wireValue);
  @override
  final String wireValue;

  static KeyEncryptionKeyIdentityType fromValue(String value) {
    for (final item in KeyEncryptionKeyIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyEncryptionKeyIdentityType value: $value');
  }
}

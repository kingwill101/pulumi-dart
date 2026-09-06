import 'package:pulumi/pulumi.dart' as pulumi;

/// Credential type.
enum CredentialType implements pulumi.PulumiEnum<String> {
  valueIntuneAccount("IntuneAccount");

  const CredentialType(this.wireValue);
  @override
  final String wireValue;

  static CredentialType fromValue(String value) {
    for (final item in CredentialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialType value: $value');
  }
}

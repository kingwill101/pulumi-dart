import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret type.
enum SecretType implements pulumi.PulumiEnum<String> {
  valueRawValue("rawValue"),
  valueKeyVaultSecretUri("keyVaultSecretUri"),
  valueKeyVaultSecretReference("keyVaultSecretReference");

  const SecretType(this.wireValue);
  @override
  final String wireValue;

  static SecretType fromValue(String value) {
    for (final item in SecretType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretType value: $value');
  }
}

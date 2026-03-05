/// The secret type.
enum SecretType {
  valueRawValue("rawValue"),
  valueKeyVaultSecretUri("keyVaultSecretUri"),
  valueKeyVaultSecretReference("keyVaultSecretReference");

  const SecretType(this.wireValue);
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


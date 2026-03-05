/// The Credentials type.
enum CredentialType {
  azureKeyVaultSmb("AzureKeyVaultSmb");

  const CredentialType(this.wireValue);
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


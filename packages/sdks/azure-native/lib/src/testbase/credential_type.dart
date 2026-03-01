/// Credential type.
enum CredentialType {
  valueIntuneAccount("IntuneAccount");

  const CredentialType(this.value);
  final String value;

  static CredentialType fromValue(String value) {
    for (final item in CredentialType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CredentialType value: $value');
  }
}


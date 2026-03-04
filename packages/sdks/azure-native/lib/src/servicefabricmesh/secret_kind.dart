/// Describes the kind of secret.
enum SecretKind {
  valueInlinedValue("inlinedValue");

  const SecretKind(this.wireValue);
  final String wireValue;

  static SecretKind fromValue(String value) {
    for (final item in SecretKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretKind value: $value');
  }
}

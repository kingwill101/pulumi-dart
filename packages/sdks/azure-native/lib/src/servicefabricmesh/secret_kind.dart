/// Describes the kind of secret.
enum SecretKind {
  valueInlinedValue("inlinedValue");

  const SecretKind(this.value);
  final String value;

  static SecretKind fromValue(String value) {
    for (final item in SecretKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecretKind value: $value');
  }
}


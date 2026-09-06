import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the kind of secret.
enum SecretKind implements pulumi.PulumiEnum<String> {
  valueInlinedValue("inlinedValue");

  const SecretKind(this.wireValue);
  @override
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

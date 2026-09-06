import 'package:pulumi/pulumi.dart' as pulumi;

/// The method that should be used to authenticate the user.
enum ClientCredentialMethod implements pulumi.PulumiEnum<String> {
  valueClientSecretPost("ClientSecretPost");

  const ClientCredentialMethod(this.wireValue);
  @override
  final String wireValue;

  static ClientCredentialMethod fromValue(String value) {
    for (final item in ClientCredentialMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClientCredentialMethod value: $value');
  }
}

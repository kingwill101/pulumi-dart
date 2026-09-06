import 'package:pulumi/pulumi.dart' as pulumi;

/// The cross tenant token validation.
enum CrossTenantTokenValidation implements pulumi.PulumiEnum<String> {
  ensureSecureValidation("EnsureSecureValidation"),
  passthroughInsecureToken("PassthroughInsecureToken");

  const CrossTenantTokenValidation(this.wireValue);
  @override
  final String wireValue;

  static CrossTenantTokenValidation fromValue(String value) {
    for (final item in CrossTenantTokenValidation.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossTenantTokenValidation value: $value');
  }
}

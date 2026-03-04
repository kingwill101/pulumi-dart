/// The cross tenant token validation.
enum CrossTenantTokenValidation {
  ensureSecureValidation("EnsureSecureValidation"),
  passthroughInsecureToken("PassthroughInsecureToken");

  const CrossTenantTokenValidation(this.wireValue);
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

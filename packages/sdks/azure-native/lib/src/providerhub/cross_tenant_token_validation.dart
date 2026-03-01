/// The cross tenant token validation.
enum CrossTenantTokenValidation {
  ensureSecureValidation("EnsureSecureValidation"),
  passthroughInsecureToken("PassthroughInsecureToken");

  const CrossTenantTokenValidation(this.value);
  final String value;

  static CrossTenantTokenValidation fromValue(String value) {
    for (final item in CrossTenantTokenValidation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CrossTenantTokenValidation value: $value');
  }
}


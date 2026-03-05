/// The convention used when determining the session cookie's expiration.
enum CookieExpirationConvention {
  valueFixedTime("FixedTime"),
  valueIdentityProviderDerived("IdentityProviderDerived");

  const CookieExpirationConvention(this.wireValue);
  final String wireValue;

  static CookieExpirationConvention fromValue(String value) {
    for (final item in CookieExpirationConvention.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CookieExpirationConvention value: $value');
  }
}


/// The provider type.
enum ResourceProviderType {
  notSpecified("NotSpecified"),
  internal("Internal"),
  external("External"),
  hidden("Hidden"),
  registrationFree("RegistrationFree"),
  legacyRegistrationRequired("LegacyRegistrationRequired"),
  tenantOnly("TenantOnly"),
  authorizationFree("AuthorizationFree");

  const ResourceProviderType(this.wireValue);
  final String wireValue;

  static ResourceProviderType fromValue(String value) {
    for (final item in ResourceProviderType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceProviderType value: $value');
  }
}

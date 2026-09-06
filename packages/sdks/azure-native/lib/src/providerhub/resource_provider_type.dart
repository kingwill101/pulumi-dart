import 'package:pulumi/pulumi.dart' as pulumi;

/// The provider type.
enum ResourceProviderType implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  internal("Internal"),
  external("External"),
  hidden("Hidden"),
  registrationFree("RegistrationFree"),
  legacyRegistrationRequired("LegacyRegistrationRequired"),
  tenantOnly("TenantOnly"),
  authorizationFree("AuthorizationFree");

  const ResourceProviderType(this.wireValue);
  @override
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

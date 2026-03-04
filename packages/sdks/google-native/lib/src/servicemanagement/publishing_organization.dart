/// For whom the client library is being published.
enum PublishingOrganization {
  clientLibraryOrganizationUnspecified(
    "CLIENT_LIBRARY_ORGANIZATION_UNSPECIFIED",
  ),
  cloud("CLOUD"),
  ads("ADS"),
  photos("PHOTOS"),
  streetView("STREET_VIEW"),
  shopping("SHOPPING"),
  geo("GEO"),
  generativeAi("GENERATIVE_AI");

  const PublishingOrganization(this.wireValue);
  final String wireValue;

  static PublishingOrganization fromValue(String value) {
    for (final item in PublishingOrganization.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublishingOrganization value: $value');
  }
}

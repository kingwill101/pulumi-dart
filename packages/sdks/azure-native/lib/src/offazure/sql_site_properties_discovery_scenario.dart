/// Gets or sets the discovery scenario.
enum SqlSitePropertiesDiscoveryScenario {
  migrate("Migrate"),
  dR("DR");

  const SqlSitePropertiesDiscoveryScenario(this.wireValue);
  final String wireValue;

  static SqlSitePropertiesDiscoveryScenario fromValue(String value) {
    for (final item in SqlSitePropertiesDiscoveryScenario.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SqlSitePropertiesDiscoveryScenario value: $value',
    );
  }
}

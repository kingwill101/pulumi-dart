/// Gets or sets the discovery scenario.
enum SqlSitePropertiesDiscoveryScenario {
  migrate("Migrate"),
  dR("DR");

  const SqlSitePropertiesDiscoveryScenario(this.value);
  final String value;

  static SqlSitePropertiesDiscoveryScenario fromValue(String value) {
    for (final item in SqlSitePropertiesDiscoveryScenario.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlSitePropertiesDiscoveryScenario value: $value');
  }
}


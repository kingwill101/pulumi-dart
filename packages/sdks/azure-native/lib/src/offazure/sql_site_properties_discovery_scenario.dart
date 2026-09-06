import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the discovery scenario.
enum SqlSitePropertiesDiscoveryScenario implements pulumi.PulumiEnum<String> {
  migrate("Migrate"),
  dR("DR");

  const SqlSitePropertiesDiscoveryScenario(this.wireValue);
  @override
  final String wireValue;

  static SqlSitePropertiesDiscoveryScenario fromValue(String value) {
    for (final item in SqlSitePropertiesDiscoveryScenario.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlSitePropertiesDiscoveryScenario value: $value');
  }
}

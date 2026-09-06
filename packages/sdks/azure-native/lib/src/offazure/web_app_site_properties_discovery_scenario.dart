import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the discovery scenario.
enum WebAppSitePropertiesDiscoveryScenario implements pulumi.PulumiEnum<String> {
  migrate("Migrate"),
  dR("DR");

  const WebAppSitePropertiesDiscoveryScenario(this.wireValue);
  @override
  final String wireValue;

  static WebAppSitePropertiesDiscoveryScenario fromValue(String value) {
    for (final item in WebAppSitePropertiesDiscoveryScenario.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebAppSitePropertiesDiscoveryScenario value: $value');
  }
}

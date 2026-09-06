import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration type. Eg: Deployment/Discovery
enum SAPConfigurationType implements pulumi.PulumiEnum<String> {
  deployment("Deployment"),
  discovery("Discovery"),
  deploymentWithOSConfig("DeploymentWithOSConfig");

  const SAPConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static SAPConfigurationType fromValue(String value) {
    for (final item in SAPConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPConfigurationType value: $value');
  }
}

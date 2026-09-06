import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates if the traffic matched against the rule in inbound or outbound.
enum SecurityConfigurationRuleDirection implements pulumi.PulumiEnum<String> {
  valueInbound("Inbound"),
  valueOutbound("Outbound");

  const SecurityConfigurationRuleDirection(this.wireValue);
  @override
  final String wireValue;

  static SecurityConfigurationRuleDirection fromValue(String value) {
    for (final item in SecurityConfigurationRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfigurationRuleDirection value: $value');
  }
}

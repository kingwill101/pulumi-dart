import 'package:pulumi/pulumi.dart' as pulumi;

/// Network protocol this rule applies to.
enum SecurityConfigurationRuleProtocol implements pulumi.PulumiEnum<String> {
  valueTcp("Tcp"),
  valueUdp("Udp"),
  valueIcmp("Icmp"),
  valueEsp("Esp"),
  valueAny("Any"),
  valueAh("Ah");

  const SecurityConfigurationRuleProtocol(this.wireValue);
  @override
  final String wireValue;

  static SecurityConfigurationRuleProtocol fromValue(String value) {
    for (final item in SecurityConfigurationRuleProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityConfigurationRuleProtocol value: $value');
  }
}

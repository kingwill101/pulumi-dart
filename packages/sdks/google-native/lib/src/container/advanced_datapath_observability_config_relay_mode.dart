import 'package:pulumi/pulumi.dart' as pulumi;

/// Method used to make Relay available
enum AdvancedDatapathObservabilityConfigRelayMode implements pulumi.PulumiEnum<String> {
  relayModeUnspecified("RELAY_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  internalVpcLb("INTERNAL_VPC_LB"),
  externalLb("EXTERNAL_LB");

  const AdvancedDatapathObservabilityConfigRelayMode(this.wireValue);
  @override
  final String wireValue;

  static AdvancedDatapathObservabilityConfigRelayMode fromValue(String value) {
    for (final item in AdvancedDatapathObservabilityConfigRelayMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvancedDatapathObservabilityConfigRelayMode value: $value');
  }
}

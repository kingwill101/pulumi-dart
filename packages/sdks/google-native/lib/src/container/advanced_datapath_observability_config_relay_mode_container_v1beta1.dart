import 'package:pulumi/pulumi.dart' as pulumi;

/// Method used to make Relay available
enum AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  relayModeUnspecified("RELAY_MODE_UNSPECIFIED"),
  disabled("DISABLED"),
  internalVpcLb("INTERNAL_VPC_LB"),
  externalLb("EXTERNAL_LB");

  const AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1 fromValue(String value) {
    for (final item in AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1 value: $value');
  }
}

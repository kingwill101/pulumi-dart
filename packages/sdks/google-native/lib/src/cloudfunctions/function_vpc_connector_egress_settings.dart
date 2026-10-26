import 'package:pulumi/pulumi.dart' as pulumi;

/// The egress settings for the connector, controlling what traffic is diverted through it.
enum FunctionVpcConnectorEgressSettings implements pulumi.PulumiEnum<String> {
  vpcConnectorEgressSettingsUnspecified("VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const FunctionVpcConnectorEgressSettings(this.wireValue);
  @override
  final String wireValue;

  static FunctionVpcConnectorEgressSettings fromValue(String value) {
    for (final item in FunctionVpcConnectorEgressSettings.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FunctionVpcConnectorEgressSettings value: $value');
  }
}

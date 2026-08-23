/// The egress settings for the connector, controlling what traffic is diverted through it.
enum FunctionVpcConnectorEgressSettings {
  vpcConnectorEgressSettingsUnspecified("VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const FunctionVpcConnectorEgressSettings(this.wireValue);
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

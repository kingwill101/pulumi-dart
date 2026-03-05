/// The egress settings for the connector, controlling what traffic is diverted through it.
enum ServiceConfigVpcConnectorEgressSettings {
  vpcConnectorEgressSettingsUnspecified("VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED"),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const ServiceConfigVpcConnectorEgressSettings(this.wireValue);
  final String wireValue;

  static ServiceConfigVpcConnectorEgressSettings fromValue(String value) {
    for (final item in ServiceConfigVpcConnectorEgressSettings.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceConfigVpcConnectorEgressSettings value: $value');
  }
}


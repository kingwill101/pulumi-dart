/// The egress settings for the connector, controlling what traffic is diverted through it.
enum ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha {
  vpcConnectorEgressSettingsUnspecified(
    "VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED",
  ),
  privateRangesOnly("PRIVATE_RANGES_ONLY"),
  allTraffic("ALL_TRAFFIC");

  const ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha(
    this.wireValue,
  );
  final String wireValue;

  static ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha fromValue(
    String value,
  ) {
    for (final item
        in ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha
            .values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceConfigVpcConnectorEgressSettingsCloudfunctionsV2alpha value: $value',
    );
  }
}

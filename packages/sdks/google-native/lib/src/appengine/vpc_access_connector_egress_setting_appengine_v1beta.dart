/// The egress setting for the connector, controlling what traffic is diverted through it.
enum VpcAccessConnectorEgressSettingAppengineV1beta {
  egressSettingUnspecified("EGRESS_SETTING_UNSPECIFIED"),
  allTraffic("ALL_TRAFFIC"),
  privateIpRanges("PRIVATE_IP_RANGES");

  const VpcAccessConnectorEgressSettingAppengineV1beta(this.wireValue);
  final String wireValue;

  static VpcAccessConnectorEgressSettingAppengineV1beta fromValue(String value) {
    for (final item in VpcAccessConnectorEgressSettingAppengineV1beta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpcAccessConnectorEgressSettingAppengineV1beta value: $value');
  }
}


/// The egress setting for the connector, controlling what traffic is diverted through it.
enum VpcAccessConnectorEgressSetting {
  egressSettingUnspecified("EGRESS_SETTING_UNSPECIFIED"),
  allTraffic("ALL_TRAFFIC"),
  privateIpRanges("PRIVATE_IP_RANGES");

  const VpcAccessConnectorEgressSetting(this.wireValue);
  final String wireValue;

  static VpcAccessConnectorEgressSetting fromValue(String value) {
    for (final item in VpcAccessConnectorEgressSetting.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpcAccessConnectorEgressSetting value: $value');
  }
}


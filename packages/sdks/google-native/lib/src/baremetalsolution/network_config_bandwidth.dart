/// Interconnect bandwidth. Set only when type is CLIENT.
enum NetworkConfigBandwidth {
  bandwidthUnspecified("BANDWIDTH_UNSPECIFIED"),
  bw1Gbps("BW_1_GBPS"),
  bw2Gbps("BW_2_GBPS"),
  bw5Gbps("BW_5_GBPS"),
  bw10Gbps("BW_10_GBPS");

  const NetworkConfigBandwidth(this.wireValue);
  final String wireValue;

  static NetworkConfigBandwidth fromValue(String value) {
    for (final item in NetworkConfigBandwidth.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkConfigBandwidth value: $value');
  }
}

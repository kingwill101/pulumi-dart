/// Optional. The type of IPv6 access for a cluster.
enum GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2 {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK"),
  outbound("OUTBOUND"),
  bidirectional("BIDIRECTIONAL");

  const GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2(this.wireValue);
  final String wireValue;

  static GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2 fromValue(String value) {
    for (final item in GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GceClusterConfigPrivateIpv6GoogleAccessDataprocV1beta2 value: $value');
  }
}


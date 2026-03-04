/// Optional. The type of IPv6 access for a cluster.
enum GceClusterConfigPrivateIpv6GoogleAccess {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  inheritFromSubnetwork("INHERIT_FROM_SUBNETWORK"),
  outbound("OUTBOUND"),
  bidirectional("BIDIRECTIONAL");

  const GceClusterConfigPrivateIpv6GoogleAccess(this.wireValue);
  final String wireValue;

  static GceClusterConfigPrivateIpv6GoogleAccess fromValue(String value) {
    for (final item in GceClusterConfigPrivateIpv6GoogleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GceClusterConfigPrivateIpv6GoogleAccess value: $value',
    );
  }
}

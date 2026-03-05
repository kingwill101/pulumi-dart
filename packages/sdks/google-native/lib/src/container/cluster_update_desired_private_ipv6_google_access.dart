/// The desired state of IPv6 connectivity to Google Services.
enum ClusterUpdateDesiredPrivateIpv6GoogleAccess {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  privateIpv6GoogleAccessDisabled("PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"),
  privateIpv6GoogleAccessToGoogle("PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"),
  privateIpv6GoogleAccessBidirectional("PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL");

  const ClusterUpdateDesiredPrivateIpv6GoogleAccess(this.wireValue);
  final String wireValue;

  static ClusterUpdateDesiredPrivateIpv6GoogleAccess fromValue(String value) {
    for (final item in ClusterUpdateDesiredPrivateIpv6GoogleAccess.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateDesiredPrivateIpv6GoogleAccess value: $value');
  }
}


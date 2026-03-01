/// The desired state of IPv6 connectivity to Google Services.
enum ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1 {
  privateIpv6GoogleAccessUnspecified("PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED"),
  privateIpv6GoogleAccessDisabled("PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED"),
  privateIpv6GoogleAccessToGoogle("PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE"),
  privateIpv6GoogleAccessBidirectional("PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL");

  const ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1(this.value);
  final String value;

  static ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1 fromValue(String value) {
    for (final item in ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterUpdateDesiredPrivateIpv6GoogleAccessContainerV1beta1 value: $value');
  }
}


/// This field is for internal use. This field can be both set at resource creation time and updated using patch.
enum SubnetworkPrivateIpv6GoogleAccessComputeV1 {
  disableGoogleAccess("DISABLE_GOOGLE_ACCESS"),
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE");

  const SubnetworkPrivateIpv6GoogleAccessComputeV1(this.wireValue);
  final String wireValue;

  static SubnetworkPrivateIpv6GoogleAccessComputeV1 fromValue(String value) {
    for (final item in SubnetworkPrivateIpv6GoogleAccessComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkPrivateIpv6GoogleAccessComputeV1 value: $value');
  }
}


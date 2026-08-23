/// This field is for internal use. This field can be both set at resource creation time and updated using patch.
enum SubnetworkPrivateIpv6GoogleAccessComputeBeta {
  disableGoogleAccess("DISABLE_GOOGLE_ACCESS"),
  enableBidirectionalAccessToGoogle("ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE"),
  enableOutboundVmAccessToGoogle("ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE");

  const SubnetworkPrivateIpv6GoogleAccessComputeBeta(this.wireValue);
  final String wireValue;

  static SubnetworkPrivateIpv6GoogleAccessComputeBeta fromValue(String value) {
    for (final item in SubnetworkPrivateIpv6GoogleAccessComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SubnetworkPrivateIpv6GoogleAccessComputeBeta value: $value');
  }
}

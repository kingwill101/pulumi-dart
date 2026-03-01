// ignore_for_file: unused_element, unnecessary_cast


class VpnGatewayConnectionTrafficSelectorPolicy {
  /// A list of local address spaces in CIDR format for this VPN Gateway Connection.
  final List<String> localAddressRanges;
  /// A list of remote address spaces in CIDR format for this VPN Gateway Connection.
  final List<String> remoteAddressRanges;

  /// Creates a new [VpnGatewayConnectionTrafficSelectorPolicy].
  /// [localAddressRanges] A list of local address spaces in CIDR format for this VPN Gateway Connection.
  /// [remoteAddressRanges] A list of remote address spaces in CIDR format for this VPN Gateway Connection.
  VpnGatewayConnectionTrafficSelectorPolicy({
    required this.localAddressRanges,
    required this.remoteAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAddressRanges': localAddressRanges,
      'remoteAddressRanges': remoteAddressRanges,
    };
  }

  factory VpnGatewayConnectionTrafficSelectorPolicy.fromMap(Map<String, dynamic> map) {
    return VpnGatewayConnectionTrafficSelectorPolicy(
      localAddressRanges: (map['localAddressRanges'] as List).cast<String>(),
      remoteAddressRanges: (map['remoteAddressRanges'] as List).cast<String>(),
    );
  }
}


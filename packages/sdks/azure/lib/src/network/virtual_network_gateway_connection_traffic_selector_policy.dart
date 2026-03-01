// ignore_for_file: unused_element, unnecessary_cast


class VirtualNetworkGatewayConnectionTrafficSelectorPolicy {
  /// List of local CIDRs.
  final List<String> localAddressCidrs;
  /// List of remote CIDRs.
  final List<String> remoteAddressCidrs;

  /// Creates a new [VirtualNetworkGatewayConnectionTrafficSelectorPolicy].
  /// [localAddressCidrs] List of local CIDRs.
  /// [remoteAddressCidrs] List of remote CIDRs.
  VirtualNetworkGatewayConnectionTrafficSelectorPolicy({
    required this.localAddressCidrs,
    required this.remoteAddressCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAddressCidrs': localAddressCidrs,
      'remoteAddressCidrs': remoteAddressCidrs,
    };
  }

  factory VirtualNetworkGatewayConnectionTrafficSelectorPolicy.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayConnectionTrafficSelectorPolicy(
      localAddressCidrs: (map['localAddressCidrs'] as List).cast<String>(),
      remoteAddressCidrs: (map['remoteAddressCidrs'] as List).cast<String>(),
    );
  }
}


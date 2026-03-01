// ignore_for_file: unused_element, unnecessary_cast


class PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool {
  /// A list of CIDR Ranges which should be used as Address Prefixes.
  final List<String> addressPrefixes;

  /// Creates a new [PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool].
  /// [addressPrefixes] A list of CIDR Ranges which should be used as Address Prefixes.
  PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool({
    required this.addressPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
    };
  }

  factory PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfigurationVpnClientAddressPool(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
    );
  }
}


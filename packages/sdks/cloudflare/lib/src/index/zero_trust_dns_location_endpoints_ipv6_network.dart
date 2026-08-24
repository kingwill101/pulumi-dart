// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDnsLocationEndpointsIpv6Network {
  /// Specify the IPv6 address or IPv6 CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [ZeroTrustDnsLocationEndpointsIpv6Network].
  /// [network] Specify the IPv6 address or IPv6 CIDR.
  const ZeroTrustDnsLocationEndpointsIpv6Network({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory ZeroTrustDnsLocationEndpointsIpv6Network.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpointsIpv6Network(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}

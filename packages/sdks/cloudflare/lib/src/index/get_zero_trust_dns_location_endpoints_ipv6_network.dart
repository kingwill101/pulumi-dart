// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationEndpointsIpv6Network {
  /// Specify the IPv6 address or IPv6 CIDR.
  final pulumi.Input<String> network;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsIpv6Network].
  /// [network] Specify the IPv6 address or IPv6 CIDR.
  const GetZeroTrustDnsLocationEndpointsIpv6Network({
    required this.network,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': network,
    };
  }

  factory GetZeroTrustDnsLocationEndpointsIpv6Network.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsIpv6Network(
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}

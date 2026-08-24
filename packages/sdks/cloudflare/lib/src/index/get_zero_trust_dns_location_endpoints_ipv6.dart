// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_endpoints_ipv6_network.dart';

class GetZeroTrustDnsLocationEndpointsIpv6 {
  /// Indicate whether the IPV6 endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;
  /// Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationEndpointsIpv6Network>> networks;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsIpv6].
  /// [enabled] Indicate whether the IPV6 endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const GetZeroTrustDnsLocationEndpointsIpv6({
    required this.enabled,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationEndpointsIpv6Network>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationEndpointsIpv6Network, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDnsLocationEndpointsIpv6.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsIpv6(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationEndpointsIpv6Network>(map['networks']!, (value) => GetZeroTrustDnsLocationEndpointsIpv6Network.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

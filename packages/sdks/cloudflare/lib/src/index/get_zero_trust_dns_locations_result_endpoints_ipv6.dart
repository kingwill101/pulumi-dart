// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_locations_result_endpoints_ipv6_network.dart';

class GetZeroTrustDnsLocationsResultEndpointsIpv6 {
  /// Indicate whether the IPV6 endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;
  /// Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationsResultEndpointsIpv6Network>> networks;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpointsIpv6].
  /// [enabled] Indicate whether the IPV6 endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IPv6 network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const GetZeroTrustDnsLocationsResultEndpointsIpv6({
    required this.enabled,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationsResultEndpointsIpv6Network>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationsResultEndpointsIpv6Network, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpointsIpv6.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpointsIpv6(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationsResultEndpointsIpv6Network>(map['networks']!, (value) => GetZeroTrustDnsLocationsResultEndpointsIpv6Network.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

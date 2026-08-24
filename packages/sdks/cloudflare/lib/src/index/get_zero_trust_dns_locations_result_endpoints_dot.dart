// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_locations_result_endpoints_dot_network.dart';

class GetZeroTrustDnsLocationsResultEndpointsDot {
  /// Indicate whether the DOT endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationsResultEndpointsDotNetwork>> networks;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpointsDot].
  /// [enabled] Indicate whether the DOT endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const GetZeroTrustDnsLocationsResultEndpointsDot({
    required this.enabled,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationsResultEndpointsDotNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationsResultEndpointsDotNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpointsDot.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpointsDot(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationsResultEndpointsDotNetwork>(map['networks']!, (value) => GetZeroTrustDnsLocationsResultEndpointsDotNetwork.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

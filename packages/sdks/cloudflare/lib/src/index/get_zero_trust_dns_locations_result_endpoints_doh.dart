// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_locations_result_endpoints_doh_network.dart';

class GetZeroTrustDnsLocationsResultEndpointsDoh {
  /// Indicate whether the DOH endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationsResultEndpointsDohNetwork>> networks;
  /// Specify whether the DOH endpoint requires user identity authentication.
  final pulumi.Input<bool> requireToken;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpointsDoh].
  /// [enabled] Indicate whether the DOH endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  /// [requireToken] Specify whether the DOH endpoint requires user identity authentication.
  const GetZeroTrustDnsLocationsResultEndpointsDoh({
    required this.enabled,
    required this.networks,
    required this.requireToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationsResultEndpointsDohNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationsResultEndpointsDohNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireToken': requireToken,
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpointsDoh.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpointsDoh(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationsResultEndpointsDohNetwork>(map['networks']!, (value) => GetZeroTrustDnsLocationsResultEndpointsDohNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      requireToken: pulumi.Input.fromValue(map['requireToken'] as bool),
    );
  }
}

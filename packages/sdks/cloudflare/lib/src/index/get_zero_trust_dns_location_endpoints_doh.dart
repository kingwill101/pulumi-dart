// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_endpoints_doh_network.dart';

class GetZeroTrustDnsLocationEndpointsDoh {
  /// Indicate whether the DOH endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationEndpointsDohNetwork>> networks;
  /// Specify whether the DOH endpoint requires user identity authentication.
  final pulumi.Input<bool> requireToken;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsDoh].
  /// [enabled] Indicate whether the DOH endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  /// [requireToken] Specify whether the DOH endpoint requires user identity authentication.
  const GetZeroTrustDnsLocationEndpointsDoh({
    required this.enabled,
    required this.networks,
    required this.requireToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationEndpointsDohNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationEndpointsDohNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requireToken': requireToken,
    };
  }

  factory GetZeroTrustDnsLocationEndpointsDoh.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsDoh(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationEndpointsDohNetwork>(map['networks']!, (value) => GetZeroTrustDnsLocationEndpointsDohNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      requireToken: pulumi.Input.fromValue(map['requireToken'] as bool),
    );
  }
}

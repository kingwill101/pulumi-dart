// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_endpoints_dot_network.dart';

class GetZeroTrustDnsLocationEndpointsDot {
  /// Indicate whether the DOT endpoint is enabled for this location.
  final pulumi.Input<bool> enabled;
  /// Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  final pulumi.Input<List<GetZeroTrustDnsLocationEndpointsDotNetwork>> networks;

  /// Creates a new [GetZeroTrustDnsLocationEndpointsDot].
  /// [enabled] Indicate whether the DOT endpoint is enabled for this location.
  /// [networks] Specify the list of allowed source IP network ranges for this endpoint. When the list is empty, the endpoint allows all source IPs. The list takes effect only if the endpoint is enabled for this location.
  const GetZeroTrustDnsLocationEndpointsDot({
    required this.enabled,
    required this.networks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'networks': pulumi.Input.mapInputValue<List<GetZeroTrustDnsLocationEndpointsDotNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetZeroTrustDnsLocationEndpointsDotNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetZeroTrustDnsLocationEndpointsDot.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpointsDot(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      networks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDnsLocationEndpointsDotNetwork>(map['networks']!, (value) => GetZeroTrustDnsLocationEndpointsDotNetwork.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

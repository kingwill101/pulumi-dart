// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_locations_result_endpoints_doh.dart';
import 'get_zero_trust_dns_locations_result_endpoints_dot.dart';
import 'get_zero_trust_dns_locations_result_endpoints_ipv4.dart';
import 'get_zero_trust_dns_locations_result_endpoints_ipv6.dart';

class GetZeroTrustDnsLocationsResultEndpoints {
  final pulumi.Input<GetZeroTrustDnsLocationsResultEndpointsDoh> doh;
  final pulumi.Input<GetZeroTrustDnsLocationsResultEndpointsDot> dot;
  final pulumi.Input<GetZeroTrustDnsLocationsResultEndpointsIpv4> ipv4;
  final pulumi.Input<GetZeroTrustDnsLocationsResultEndpointsIpv6> ipv6;

  /// Creates a new [GetZeroTrustDnsLocationsResultEndpoints].
  /// [doh] Required.
  /// [dot] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  const GetZeroTrustDnsLocationsResultEndpoints({
    required this.doh,
    required this.dot,
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doh': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationsResultEndpointsDoh, Map<String, dynamic>>(doh, (value) => value.toMap()),
      'dot': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationsResultEndpointsDot, Map<String, dynamic>>(dot, (value) => value.toMap()),
      'ipv4': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationsResultEndpointsIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationsResultEndpointsIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustDnsLocationsResultEndpoints.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationsResultEndpoints(
      doh: pulumi.Input.fromValue(GetZeroTrustDnsLocationsResultEndpointsDoh.fromMap((map['doh']! as Map).cast<String, dynamic>())),
      dot: pulumi.Input.fromValue(GetZeroTrustDnsLocationsResultEndpointsDot.fromMap((map['dot']! as Map).cast<String, dynamic>())),
      ipv4: pulumi.Input.fromValue(GetZeroTrustDnsLocationsResultEndpointsIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(GetZeroTrustDnsLocationsResultEndpointsIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
    );
  }
}

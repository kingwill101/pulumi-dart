// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dns_location_endpoints_doh.dart';
import 'get_zero_trust_dns_location_endpoints_dot.dart';
import 'get_zero_trust_dns_location_endpoints_ipv4.dart';
import 'get_zero_trust_dns_location_endpoints_ipv6.dart';

class GetZeroTrustDnsLocationEndpoints {
  final pulumi.Input<GetZeroTrustDnsLocationEndpointsDoh> doh;
  final pulumi.Input<GetZeroTrustDnsLocationEndpointsDot> dot;
  final pulumi.Input<GetZeroTrustDnsLocationEndpointsIpv4> ipv4;
  final pulumi.Input<GetZeroTrustDnsLocationEndpointsIpv6> ipv6;

  /// Creates a new [GetZeroTrustDnsLocationEndpoints].
  /// [doh] Required.
  /// [dot] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  const GetZeroTrustDnsLocationEndpoints({
    required this.doh,
    required this.dot,
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doh': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationEndpointsDoh, Map<String, dynamic>>(doh, (value) => value.toMap()),
      'dot': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationEndpointsDot, Map<String, dynamic>>(dot, (value) => value.toMap()),
      'ipv4': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationEndpointsIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<GetZeroTrustDnsLocationEndpointsIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustDnsLocationEndpoints.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationEndpoints(
      doh: pulumi.Input.fromValue(GetZeroTrustDnsLocationEndpointsDoh.fromMap((map['doh']! as Map).cast<String, dynamic>())),
      dot: pulumi.Input.fromValue(GetZeroTrustDnsLocationEndpointsDot.fromMap((map['dot']! as Map).cast<String, dynamic>())),
      ipv4: pulumi.Input.fromValue(GetZeroTrustDnsLocationEndpointsIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(GetZeroTrustDnsLocationEndpointsIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
    );
  }
}

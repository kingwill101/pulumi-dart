// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dns_location_endpoints_doh.dart';
import 'zero_trust_dns_location_endpoints_dot.dart';
import 'zero_trust_dns_location_endpoints_ipv4.dart';
import 'zero_trust_dns_location_endpoints_ipv6.dart';

class ZeroTrustDnsLocationEndpoints {
  final pulumi.Input<ZeroTrustDnsLocationEndpointsDoh> doh;
  final pulumi.Input<ZeroTrustDnsLocationEndpointsDot> dot;
  final pulumi.Input<ZeroTrustDnsLocationEndpointsIpv4> ipv4;
  final pulumi.Input<ZeroTrustDnsLocationEndpointsIpv6> ipv6;

  /// Creates a new [ZeroTrustDnsLocationEndpoints].
  /// [doh] Required.
  /// [dot] Required.
  /// [ipv4] Required.
  /// [ipv6] Required.
  const ZeroTrustDnsLocationEndpoints({
    required this.doh,
    required this.dot,
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doh': pulumi.Input.mapInputValue<ZeroTrustDnsLocationEndpointsDoh, Map<String, dynamic>>(doh, (value) => value.toMap()),
      'dot': pulumi.Input.mapInputValue<ZeroTrustDnsLocationEndpointsDot, Map<String, dynamic>>(dot, (value) => value.toMap()),
      'ipv4': pulumi.Input.mapInputValue<ZeroTrustDnsLocationEndpointsIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<ZeroTrustDnsLocationEndpointsIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
    };
  }

  factory ZeroTrustDnsLocationEndpoints.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDnsLocationEndpoints(
      doh: pulumi.Input.fromValue(ZeroTrustDnsLocationEndpointsDoh.fromMap((map['doh']! as Map).cast<String, dynamic>())),
      dot: pulumi.Input.fromValue(ZeroTrustDnsLocationEndpointsDot.fromMap((map['dot']! as Map).cast<String, dynamic>())),
      ipv4: pulumi.Input.fromValue(ZeroTrustDnsLocationEndpointsIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(ZeroTrustDnsLocationEndpointsIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
    );
  }
}

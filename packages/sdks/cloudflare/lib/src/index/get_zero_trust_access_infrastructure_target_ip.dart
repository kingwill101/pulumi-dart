// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_infrastructure_target_ip_ipv4.dart';
import 'get_zero_trust_access_infrastructure_target_ip_ipv6.dart';

class GetZeroTrustAccessInfrastructureTargetIp {
  /// The target's IPv4 address
  final pulumi.Input<GetZeroTrustAccessInfrastructureTargetIpIpv4> ipv4;
  /// The target's IPv6 address
  final pulumi.Input<GetZeroTrustAccessInfrastructureTargetIpIpv6> ipv6;

  /// Creates a new [GetZeroTrustAccessInfrastructureTargetIp].
  /// [ipv4] The target's IPv4 address
  /// [ipv6] The target's IPv6 address
  const GetZeroTrustAccessInfrastructureTargetIp({
    required this.ipv4,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': pulumi.Input.mapInputValue<GetZeroTrustAccessInfrastructureTargetIpIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': pulumi.Input.mapInputValue<GetZeroTrustAccessInfrastructureTargetIpIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessInfrastructureTargetIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessInfrastructureTargetIp(
      ipv4: pulumi.Input.fromValue(GetZeroTrustAccessInfrastructureTargetIpIpv4.fromMap((map['ipv4']! as Map).cast<String, dynamic>())),
      ipv6: pulumi.Input.fromValue(GetZeroTrustAccessInfrastructureTargetIpIpv6.fromMap((map['ipv6']! as Map).cast<String, dynamic>())),
    );
  }
}

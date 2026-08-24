// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_infrastructure_target_ip_ipv4.dart';
import 'zero_trust_access_infrastructure_target_ip_ipv6.dart';

class ZeroTrustAccessInfrastructureTargetIp {
  /// The target's IPv4 address
  final pulumi.Input<ZeroTrustAccessInfrastructureTargetIpIpv4?>? ipv4;
  /// The target's IPv6 address
  final pulumi.Input<ZeroTrustAccessInfrastructureTargetIpIpv6?>? ipv6;

  /// Creates a new [ZeroTrustAccessInfrastructureTargetIp].
  /// [ipv4] The target's IPv4 address
  /// [ipv6] The target's IPv6 address
  const ZeroTrustAccessInfrastructureTargetIp({
    this.ipv4,
    this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessInfrastructureTargetIpIpv4, Map<String, dynamic>>(ipv4, (value) => value.toMap()),
      'ipv6': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessInfrastructureTargetIpIpv6, Map<String, dynamic>>(ipv6, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessInfrastructureTargetIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessInfrastructureTargetIp(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessInfrastructureTargetIpIpv4.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessInfrastructureTargetIpIpv6.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

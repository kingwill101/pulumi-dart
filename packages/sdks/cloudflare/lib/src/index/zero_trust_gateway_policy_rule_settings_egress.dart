// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsEgress {
  /// Specify the IPv4 address to use for egress.
  final pulumi.Input<String?>? ipv4;
  /// Specify the fallback IPv4 address to use for egress when the primary IPv4 fails. Set '0.0.0.0' to indicate local egress via WARP IPs.
  final pulumi.Input<String?>? ipv4Fallback;
  /// Specify the IPv6 range to use for egress.
  final pulumi.Input<String?>? ipv6;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsEgress].
  /// [ipv4] Specify the IPv4 address to use for egress.
  /// [ipv4Fallback] Specify the fallback IPv4 address to use for egress when the primary IPv4 fails. Set '0.0.0.0' to indicate local egress via WARP IPs.
  /// [ipv6] Specify the IPv6 range to use for egress.
  const ZeroTrustGatewayPolicyRuleSettingsEgress({
    this.ipv4,
    this.ipv4Fallback,
    this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
      'ipv4Fallback': ?ipv4Fallback,
      'ipv6': ?ipv6,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsEgress.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsEgress(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Fallback: (() { final guardedValue = map['ipv4Fallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyRuleSettingsEgress {
  /// Specify the IPv4 address to use for egress.
  final pulumi.Input<String> ipv4;
  /// Specify the fallback IPv4 address to use for egress when the primary IPv4 fails. Set '0.0.0.0' to indicate local egress via WARP IPs.
  final pulumi.Input<String> ipv4Fallback;
  /// Specify the IPv6 range to use for egress.
  final pulumi.Input<String> ipv6;

  /// Creates a new [GetZeroTrustGatewayPolicyRuleSettingsEgress].
  /// [ipv4] Specify the IPv4 address to use for egress.
  /// [ipv4Fallback] Specify the fallback IPv4 address to use for egress when the primary IPv4 fails. Set '0.0.0.0' to indicate local egress via WARP IPs.
  /// [ipv6] Specify the IPv6 range to use for egress.
  const GetZeroTrustGatewayPolicyRuleSettingsEgress({
    required this.ipv4,
    required this.ipv4Fallback,
    required this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ipv4,
      'ipv4Fallback': ipv4Fallback,
      'ipv6': ipv6,
    };
  }

  factory GetZeroTrustGatewayPolicyRuleSettingsEgress.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyRuleSettingsEgress(
      ipv4: pulumi.Input.fromValue(map['ipv4'] as String),
      ipv4Fallback: pulumi.Input.fromValue(map['ipv4Fallback'] as String),
      ipv6: pulumi.Input.fromValue(map['ipv6'] as String),
    );
  }
}

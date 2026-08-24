// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsL4override {
  /// Defines the IPv4 or IPv6 address.
  final pulumi.Input<String?>? ip;
  /// Defines a port number to use for TCP/UDP overrides.
  final pulumi.Input<int?>? port;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsL4override].
  /// [ip] Defines the IPv4 or IPv6 address.
  /// [port] Defines a port number to use for TCP/UDP overrides.
  const ZeroTrustGatewayPolicyRuleSettingsL4override({
    this.ip,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ?ip,
      'port': ?port,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsL4override.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsL4override(
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

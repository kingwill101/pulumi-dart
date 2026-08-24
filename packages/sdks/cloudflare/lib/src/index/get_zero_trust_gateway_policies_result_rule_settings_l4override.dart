// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPoliciesResultRuleSettingsL4override {
  /// Defines the IPv4 or IPv6 address.
  final pulumi.Input<String> ip;
  /// Defines a port number to use for TCP/UDP overrides.
  final pulumi.Input<int> port;

  /// Creates a new [GetZeroTrustGatewayPoliciesResultRuleSettingsL4override].
  /// [ip] Defines the IPv4 or IPv6 address.
  /// [port] Defines a port number to use for TCP/UDP overrides.
  const GetZeroTrustGatewayPoliciesResultRuleSettingsL4override({
    required this.ip,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'port': port,
    };
  }

  factory GetZeroTrustGatewayPoliciesResultRuleSettingsL4override.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesResultRuleSettingsL4override(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}

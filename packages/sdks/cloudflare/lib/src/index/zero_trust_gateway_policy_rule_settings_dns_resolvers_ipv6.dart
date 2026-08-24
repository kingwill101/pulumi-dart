// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6 {
  /// Specify the IPv6 address of the upstream resolver.
  final pulumi.Input<String> ip;
  /// Specify a port number to use for the upstream resolver. Defaults to 53 if unspecified.
  final pulumi.Input<int?>? port;
  /// Indicate whether to connect to this resolver over a private network. Must set when vnetId set.
  final pulumi.Input<bool?>? routeThroughPrivateNetwork;
  /// Specify an optional virtual network for this resolver. Uses default virtual network id if omitted.
  final pulumi.Input<String?>? vnetId;

  /// Creates a new [ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6].
  /// [ip] Specify the IPv6 address of the upstream resolver.
  /// [port] Specify a port number to use for the upstream resolver. Defaults to 53 if unspecified.
  /// [routeThroughPrivateNetwork] Indicate whether to connect to this resolver over a private network. Must set when vnetId set.
  /// [vnetId] Specify an optional virtual network for this resolver. Uses default virtual network id if omitted.
  const ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6({
    required this.ip,
    this.port,
    this.routeThroughPrivateNetwork,
    this.vnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'port': ?port,
      'routeThroughPrivateNetwork': ?routeThroughPrivateNetwork,
      'vnetId': ?vnetId,
    };
  }

  factory ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayPolicyRuleSettingsDnsResolversIpv6(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      routeThroughPrivateNetwork: (() { final guardedValue = map['routeThroughPrivateNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vnetId: (() { final guardedValue = map['vnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

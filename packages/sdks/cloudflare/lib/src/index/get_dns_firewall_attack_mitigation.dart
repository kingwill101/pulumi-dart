// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsFirewallAttackMitigation {
  /// When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
  final pulumi.Input<bool> enabled;
  /// Only mitigate attacks when upstream servers seem unhealthy
  final pulumi.Input<bool> onlyWhenUpstreamUnhealthy;

  /// Creates a new [GetDnsFirewallAttackMitigation].
  /// [enabled] When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
  /// [onlyWhenUpstreamUnhealthy] Only mitigate attacks when upstream servers seem unhealthy
  const GetDnsFirewallAttackMitigation({
    required this.enabled,
    required this.onlyWhenUpstreamUnhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'onlyWhenUpstreamUnhealthy': onlyWhenUpstreamUnhealthy,
    };
  }

  factory GetDnsFirewallAttackMitigation.fromMap(Map<String, dynamic> map) {
    return GetDnsFirewallAttackMitigation(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      onlyWhenUpstreamUnhealthy: pulumi.Input.fromValue(map['onlyWhenUpstreamUnhealthy'] as bool),
    );
  }
}

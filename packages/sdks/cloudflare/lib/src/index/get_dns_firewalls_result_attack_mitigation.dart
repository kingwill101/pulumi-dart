// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDnsFirewallsResultAttackMitigation {
  /// When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
  final pulumi.Input<bool> enabled;
  /// Only mitigate attacks when upstream servers seem unhealthy
  final pulumi.Input<bool> onlyWhenUpstreamUnhealthy;

  /// Creates a new [GetDnsFirewallsResultAttackMitigation].
  /// [enabled] When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
  /// [onlyWhenUpstreamUnhealthy] Only mitigate attacks when upstream servers seem unhealthy
  const GetDnsFirewallsResultAttackMitigation({
    required this.enabled,
    required this.onlyWhenUpstreamUnhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'onlyWhenUpstreamUnhealthy': onlyWhenUpstreamUnhealthy,
    };
  }

  factory GetDnsFirewallsResultAttackMitigation.fromMap(Map<String, dynamic> map) {
    return GetDnsFirewallsResultAttackMitigation(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      onlyWhenUpstreamUnhealthy: pulumi.Input.fromValue(map['onlyWhenUpstreamUnhealthy'] as bool),
    );
  }
}

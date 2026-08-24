// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DnsFirewallAttackMitigation {
  /// When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
  final pulumi.Input<bool?>? enabled;
  /// Only mitigate attacks when upstream servers seem unhealthy
  final pulumi.Input<bool?>? onlyWhenUpstreamUnhealthy;

  /// Creates a new [DnsFirewallAttackMitigation].
  /// [enabled] When enabled, automatically mitigate random-prefix attacks to protect upstream DNS servers
  /// [onlyWhenUpstreamUnhealthy] Only mitigate attacks when upstream servers seem unhealthy
  const DnsFirewallAttackMitigation({
    this.enabled,
    this.onlyWhenUpstreamUnhealthy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'onlyWhenUpstreamUnhealthy': ?onlyWhenUpstreamUnhealthy,
    };
  }

  factory DnsFirewallAttackMitigation.fromMap(Map<String, dynamic> map) {
    return DnsFirewallAttackMitigation(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      onlyWhenUpstreamUnhealthy: (() { final guardedValue = map['onlyWhenUpstreamUnhealthy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

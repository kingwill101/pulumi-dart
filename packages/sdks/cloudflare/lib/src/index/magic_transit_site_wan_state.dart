// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_wan_static_addressing.dart';

/// Input properties used for looking up and filtering MagicTransitSiteWan resources.
class MagicTransitSiteWanState {
  /// Identifier
  final pulumi.Input<String?>? accountId;
  /// Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// Available values: "low", "mid", "high".
  final pulumi.Input<String?>? healthCheckRate;
  final pulumi.Input<String?>? name;
  final pulumi.Input<int?>? physport;
  final pulumi.Input<int?>? priority;
  /// Identifier
  final pulumi.Input<String?>? siteId;
  /// (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  final pulumi.Input<MagicTransitSiteWanStaticAddressing?>? staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final pulumi.Input<int?>? vlanTag;

  /// Creates a new [MagicTransitSiteWanState].
  /// [accountId] Identifier
  /// [healthCheckRate] Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// [name] Optional.
  /// [physport] Optional.
  /// [priority] Optional.
  /// [siteId] Identifier
  /// [staticAddressing] (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const MagicTransitSiteWanState({
    this.accountId,
    this.healthCheckRate,
    this.name,
    this.physport,
    this.priority,
    this.siteId,
    this.staticAddressing,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'healthCheckRate': ?healthCheckRate,
      'name': ?name,
      'physport': ?physport,
      'priority': ?priority,
      'siteId': ?siteId,
      'staticAddressing': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteWanStaticAddressing, Map<String, dynamic>>(staticAddressing, (value) => value.toMap()),
      'vlanTag': ?vlanTag,
    };
  }

  factory MagicTransitSiteWanState.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteWanState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthCheckRate: (() { final guardedValue = map['healthCheckRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physport: (() { final guardedValue = map['physport']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticAddressing: (() { final guardedValue = map['staticAddressing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

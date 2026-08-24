// ignore_for_file: unused_element, unnecessary_cast

import 'get_magic_transit_site_wan_static_addressing.dart';

/// Result data returned by getMagicTransitSiteWan.
class GetMagicTransitSiteWanResult {
  /// Identifier
  final String? accountId;
  /// Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// Available values: "low", "mid", "high".
  final String? healthCheckRate;
  /// Identifier
  final String? id;
  final String? name;
  final int? physport;
  /// Priority of WAN for traffic loadbalancing.
  final int? priority;
  /// Identifier
  final String? siteId;
  /// (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  final GetMagicTransitSiteWanStaticAddressing? staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final int? vlanTag;
  /// Identifier
  final String? wanId;

  /// Creates a new [GetMagicTransitSiteWanResult].
  /// [accountId] Identifier
  /// [healthCheckRate] Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// [id] Identifier
  /// [name] Optional.
  /// [physport] Optional.
  /// [priority] Priority of WAN for traffic loadbalancing.
  /// [siteId] Identifier
  /// [staticAddressing] (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  /// [wanId] Identifier
  const GetMagicTransitSiteWanResult({
    this.accountId,
    this.healthCheckRate,
    this.id,
    this.name,
    this.physport,
    this.priority,
    this.siteId,
    this.staticAddressing,
    this.vlanTag,
    this.wanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'healthCheckRate': ?healthCheckRate,
      'id': ?id,
      'name': ?name,
      'physport': ?physport,
      'priority': ?priority,
      'siteId': ?siteId,
      'staticAddressing': ?staticAddressing?.toMap(),
      'vlanTag': ?vlanTag,
      'wanId': ?wanId,
    };
  }

  factory GetMagicTransitSiteWanResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteWanResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthCheckRate: (() { final guardedValue = map['healthCheckRate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physport: (() { final guardedValue = map['physport']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticAddressing: (() { final guardedValue = map['staticAddressing']; if (guardedValue == null) return null; return GetMagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      wanId: (() { final guardedValue = map['wanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

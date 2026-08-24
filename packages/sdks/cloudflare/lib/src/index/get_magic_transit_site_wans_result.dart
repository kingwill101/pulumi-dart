// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_wans_result_static_addressing.dart';

class GetMagicTransitSiteWansResult {
  /// Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// Available values: "low", "mid", "high".
  final pulumi.Input<String> healthCheckRate;
  /// Identifier
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<int> physport;
  /// Priority of WAN for traffic loadbalancing.
  final pulumi.Input<int> priority;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  final pulumi.Input<GetMagicTransitSiteWansResultStaticAddressing> staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final pulumi.Input<int> vlanTag;

  /// Creates a new [GetMagicTransitSiteWansResult].
  /// [healthCheckRate] Magic WAN health check rate for tunnels created on this link. The default value is `mid`.
  /// [id] Identifier
  /// [name] Required.
  /// [physport] Required.
  /// [priority] Priority of WAN for traffic loadbalancing.
  /// [siteId] Identifier
  /// [staticAddressing] (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const GetMagicTransitSiteWansResult({
    required this.healthCheckRate,
    required this.id,
    required this.name,
    required this.physport,
    required this.priority,
    required this.siteId,
    required this.staticAddressing,
    required this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckRate': healthCheckRate,
      'id': id,
      'name': name,
      'physport': physport,
      'priority': priority,
      'siteId': siteId,
      'staticAddressing': pulumi.Input.mapInputValue<GetMagicTransitSiteWansResultStaticAddressing, Map<String, dynamic>>(staticAddressing, (value) => value.toMap()),
      'vlanTag': vlanTag,
    };
  }

  factory GetMagicTransitSiteWansResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteWansResult(
      healthCheckRate: pulumi.Input.fromValue(map['healthCheckRate'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      physport: pulumi.Input.fromValue((map['physport'] as num).toInt()),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      staticAddressing: pulumi.Input.fromValue(GetMagicTransitSiteWansResultStaticAddressing.fromMap((map['staticAddressing']! as Map).cast<String, dynamic>())),
      vlanTag: pulumi.Input.fromValue((map['vlanTag'] as num).toInt()),
    );
  }
}

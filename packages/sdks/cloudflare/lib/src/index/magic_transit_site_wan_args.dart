// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_wan_static_addressing.dart';

/// {@template pulumi_index_magic_transit_site_wan_magic_transit_site_wan_args_doc}
/// The set of arguments for MagicTransitSiteWan.
/// {@endtemplate}
/// {@macro pulumi_index_magic_transit_site_wan_magic_transit_site_wan_args_doc}
class MagicTransitSiteWanArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? name;
  final pulumi.Input<int> physport;
  final pulumi.Input<int?>? priority;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  final pulumi.Input<MagicTransitSiteWanStaticAddressing?>? staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final pulumi.Input<int?>? vlanTag;

  /// Creates a new [MagicTransitSiteWanArgs].
  /// [accountId] Identifier
  /// [name] Optional.
  /// [physport] Required.
  /// [priority] Optional.
  /// [siteId] Identifier
  /// [staticAddressing] (optional) if omitted, use DHCP. Submit secondary*address when site is in high availability mode.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const MagicTransitSiteWanArgs({
    required this.accountId,
    this.name,
    required this.physport,
    this.priority,
    required this.siteId,
    this.staticAddressing,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': ?name,
      'physport': physport,
      'priority': ?priority,
      'siteId': siteId,
      'staticAddressing': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteWanStaticAddressing, Map<String, dynamic>>(staticAddressing, (value) => value.toMap()),
      'vlanTag': ?vlanTag,
    };
  }

  factory MagicTransitSiteWanArgs.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteWanArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physport: pulumi.Input.fromValue((map['physport'] as num).toInt()),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      staticAddressing: (() { final guardedValue = map['staticAddressing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteWanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

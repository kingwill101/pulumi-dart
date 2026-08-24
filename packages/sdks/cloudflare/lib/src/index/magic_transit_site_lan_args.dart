// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_lan_nat.dart';
import 'magic_transit_site_lan_routed_subnet.dart';
import 'magic_transit_site_lan_static_addressing.dart';

/// {@template pulumi_index_magic_transit_site_lan_magic_transit_site_lan_args_doc}
/// The set of arguments for MagicTransitSiteLan.
/// {@endtemplate}
/// {@macro pulumi_index_magic_transit_site_lan_magic_transit_site_lan_args_doc}
class MagicTransitSiteLanArgs {
  /// Identifier
  final pulumi.Input<String> accountId;
  final pulumi.Input<int?>? bondId;
  /// mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  final pulumi.Input<bool?>? haLink;
  /// mark true to use this LAN for source-based breakout traffic
  final pulumi.Input<bool?>? isBreakout;
  /// mark true to use this LAN for source-based prioritized traffic
  final pulumi.Input<bool?>? isPrioritized;
  final pulumi.Input<String?>? name;
  final pulumi.Input<MagicTransitSiteLanNat?>? nat;
  final pulumi.Input<int?>? physport;
  final pulumi.Input<List<MagicTransitSiteLanRoutedSubnet>?>? routedSubnets;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  final pulumi.Input<MagicTransitSiteLanStaticAddressing?>? staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final pulumi.Input<int?>? vlanTag;

  /// Creates a new [MagicTransitSiteLanArgs].
  /// [accountId] Identifier
  /// [bondId] Optional.
  /// [haLink] mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  /// [isBreakout] mark true to use this LAN for source-based breakout traffic
  /// [isPrioritized] mark true to use this LAN for source-based prioritized traffic
  /// [name] Optional.
  /// [nat] Optional.
  /// [physport] Optional.
  /// [routedSubnets] Optional.
  /// [siteId] Identifier
  /// [staticAddressing] If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const MagicTransitSiteLanArgs({
    required this.accountId,
    this.bondId,
    this.haLink,
    this.isBreakout,
    this.isPrioritized,
    this.name,
    this.nat,
    this.physport,
    this.routedSubnets,
    required this.siteId,
    this.staticAddressing,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bondId': ?bondId,
      'haLink': ?haLink,
      'isBreakout': ?isBreakout,
      'isPrioritized': ?isPrioritized,
      'name': ?name,
      'nat': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteLanNat, Map<String, dynamic>>(nat, (value) => value.toMap()),
      'physport': ?physport,
      'routedSubnets': ?pulumi.Input.mapOptionalInputValue<List<MagicTransitSiteLanRoutedSubnet>, List<Map<String, dynamic>>>(routedSubnets, (value) => pulumi.Input.encodeList<MagicTransitSiteLanRoutedSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': siteId,
      'staticAddressing': ?pulumi.Input.mapOptionalInputValue<MagicTransitSiteLanStaticAddressing, Map<String, dynamic>>(staticAddressing, (value) => value.toMap()),
      'vlanTag': ?vlanTag,
    };
  }

  factory MagicTransitSiteLanArgs.fromMap(Map<String, dynamic> map) {
    return MagicTransitSiteLanArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bondId: (() { final guardedValue = map['bondId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      haLink: (() { final guardedValue = map['haLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isBreakout: (() { final guardedValue = map['isBreakout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isPrioritized: (() { final guardedValue = map['isPrioritized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nat: (() { final guardedValue = map['nat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteLanNat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      physport: (() { final guardedValue = map['physport']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      routedSubnets: (() { final guardedValue = map['routedSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MagicTransitSiteLanRoutedSubnet>(guardedValue, (value) => MagicTransitSiteLanRoutedSubnet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      staticAddressing: (() { final guardedValue = map['staticAddressing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MagicTransitSiteLanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

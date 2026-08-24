// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_lan_nat.dart';
import 'get_magic_transit_site_lan_routed_subnet.dart';
import 'get_magic_transit_site_lan_static_addressing.dart';

/// Result data returned by getMagicTransitSiteLan.
class GetMagicTransitSiteLanResult {
  /// Identifier
  final String? accountId;
  final int? bondId;
  /// mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  final bool? haLink;
  /// Identifier
  final String? id;
  /// mark true to use this LAN for source-based breakout traffic
  final bool? isBreakout;
  /// mark true to use this LAN for source-based prioritized traffic
  final bool? isPrioritized;
  /// Identifier
  final String? lanId;
  final String? name;
  final GetMagicTransitSiteLanNat? nat;
  final int? physport;
  final List<GetMagicTransitSiteLanRoutedSubnet>? routedSubnets;
  /// Identifier
  final String? siteId;
  /// If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  final GetMagicTransitSiteLanStaticAddressing? staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final int? vlanTag;

  /// Creates a new [GetMagicTransitSiteLanResult].
  /// [accountId] Identifier
  /// [bondId] Optional.
  /// [haLink] mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  /// [id] Identifier
  /// [isBreakout] mark true to use this LAN for source-based breakout traffic
  /// [isPrioritized] mark true to use this LAN for source-based prioritized traffic
  /// [lanId] Identifier
  /// [name] Optional.
  /// [nat] Optional.
  /// [physport] Optional.
  /// [routedSubnets] Optional.
  /// [siteId] Identifier
  /// [staticAddressing] If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const GetMagicTransitSiteLanResult({
    this.accountId,
    this.bondId,
    this.haLink,
    this.id,
    this.isBreakout,
    this.isPrioritized,
    this.lanId,
    this.name,
    this.nat,
    this.physport,
    this.routedSubnets,
    this.siteId,
    this.staticAddressing,
    this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bondId': ?bondId,
      'haLink': ?haLink,
      'id': ?id,
      'isBreakout': ?isBreakout,
      'isPrioritized': ?isPrioritized,
      'lanId': ?lanId,
      'name': ?name,
      'nat': ?nat?.toMap(),
      'physport': ?physport,
      'routedSubnets': ?(() { final guardedValue = routedSubnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMagicTransitSiteLanRoutedSubnet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteId': ?siteId,
      'staticAddressing': ?staticAddressing?.toMap(),
      'vlanTag': ?vlanTag,
    };
  }

  factory GetMagicTransitSiteLanResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLanResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bondId: (() { final guardedValue = map['bondId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      haLink: (() { final guardedValue = map['haLink']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isBreakout: (() { final guardedValue = map['isBreakout']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isPrioritized: (() { final guardedValue = map['isPrioritized']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lanId: (() { final guardedValue = map['lanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nat: (() { final guardedValue = map['nat']; if (guardedValue == null) return null; return GetMagicTransitSiteLanNat.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      physport: (() { final guardedValue = map['physport']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      routedSubnets: (() { final guardedValue = map['routedSubnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMagicTransitSiteLanRoutedSubnet>(guardedValue, (value) => GetMagicTransitSiteLanRoutedSubnet.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      staticAddressing: (() { final guardedValue = map['staticAddressing']; if (guardedValue == null) return null; return GetMagicTransitSiteLanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vlanTag: (() { final guardedValue = map['vlanTag']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}

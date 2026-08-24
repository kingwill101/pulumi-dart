// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_magic_transit_site_lans_result_nat.dart';
import 'get_magic_transit_site_lans_result_routed_subnet.dart';
import 'get_magic_transit_site_lans_result_static_addressing.dart';

class GetMagicTransitSiteLansResult {
  final pulumi.Input<int> bondId;
  /// mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  final pulumi.Input<bool> haLink;
  /// Identifier
  final pulumi.Input<String> id;
  /// mark true to use this LAN for source-based breakout traffic
  final pulumi.Input<bool> isBreakout;
  /// mark true to use this LAN for source-based prioritized traffic
  final pulumi.Input<bool> isPrioritized;
  final pulumi.Input<String> name;
  final pulumi.Input<GetMagicTransitSiteLansResultNat> nat;
  final pulumi.Input<int> physport;
  final pulumi.Input<List<GetMagicTransitSiteLansResultRoutedSubnet>> routedSubnets;
  /// Identifier
  final pulumi.Input<String> siteId;
  /// If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  final pulumi.Input<GetMagicTransitSiteLansResultStaticAddressing> staticAddressing;
  /// VLAN ID. Use zero for untagged.
  final pulumi.Input<int> vlanTag;

  /// Creates a new [GetMagicTransitSiteLansResult].
  /// [bondId] Required.
  /// [haLink] mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  /// [id] Identifier
  /// [isBreakout] mark true to use this LAN for source-based breakout traffic
  /// [isPrioritized] mark true to use this LAN for source-based prioritized traffic
  /// [name] Required.
  /// [nat] Required.
  /// [physport] Required.
  /// [routedSubnets] Required.
  /// [siteId] Identifier
  /// [staticAddressing] If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  /// [vlanTag] VLAN ID. Use zero for untagged.
  const GetMagicTransitSiteLansResult({
    required this.bondId,
    required this.haLink,
    required this.id,
    required this.isBreakout,
    required this.isPrioritized,
    required this.name,
    required this.nat,
    required this.physport,
    required this.routedSubnets,
    required this.siteId,
    required this.staticAddressing,
    required this.vlanTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bondId': bondId,
      'haLink': haLink,
      'id': id,
      'isBreakout': isBreakout,
      'isPrioritized': isPrioritized,
      'name': name,
      'nat': pulumi.Input.mapInputValue<GetMagicTransitSiteLansResultNat, Map<String, dynamic>>(nat, (value) => value.toMap()),
      'physport': physport,
      'routedSubnets': pulumi.Input.mapInputValue<List<GetMagicTransitSiteLansResultRoutedSubnet>, List<Map<String, dynamic>>>(routedSubnets, (value) => pulumi.Input.encodeList<GetMagicTransitSiteLansResultRoutedSubnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': siteId,
      'staticAddressing': pulumi.Input.mapInputValue<GetMagicTransitSiteLansResultStaticAddressing, Map<String, dynamic>>(staticAddressing, (value) => value.toMap()),
      'vlanTag': vlanTag,
    };
  }

  factory GetMagicTransitSiteLansResult.fromMap(Map<String, dynamic> map) {
    return GetMagicTransitSiteLansResult(
      bondId: pulumi.Input.fromValue((map['bondId'] as num).toInt()),
      haLink: pulumi.Input.fromValue(map['haLink'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      isBreakout: pulumi.Input.fromValue(map['isBreakout'] as bool),
      isPrioritized: pulumi.Input.fromValue(map['isPrioritized'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      nat: pulumi.Input.fromValue(GetMagicTransitSiteLansResultNat.fromMap((map['nat']! as Map).cast<String, dynamic>())),
      physport: pulumi.Input.fromValue((map['physport'] as num).toInt()),
      routedSubnets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetMagicTransitSiteLansResultRoutedSubnet>(map['routedSubnets']!, (value) => GetMagicTransitSiteLansResultRoutedSubnet.fromMap((value as Map).cast<String, dynamic>()))),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      staticAddressing: pulumi.Input.fromValue(GetMagicTransitSiteLansResultStaticAddressing.fromMap((map['staticAddressing']! as Map).cast<String, dynamic>())),
      vlanTag: pulumi.Input.fromValue((map['vlanTag'] as num).toInt()),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_settings.dart';
import 'sub_resource.dart';
import 'vpn_connection_network.dart';
import 'vpn_gateway_nat_rule.dart';

/// {@template pulumi_network_vpn_gateway_args_doc}
/// The set of arguments for VpnGateway.
/// {@endtemplate}
/// {@macro pulumi_network_vpn_gateway_args_doc}
class VpnGatewayArgs {
  /// Local network gateway's BGP speaker settings.
  final pulumi.Input<BgpSettings>? bgpSettings;
  /// List of all vpn connections to the gateway.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<VpnConnectionNetwork>>? connections;
  /// Enable BGP routes translation for NAT on this VpnGateway.
  final pulumi.Input<bool>? enableBgpRouteTranslationForNat;
  /// The name of the gateway.
  final pulumi.Input<String>? gatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Enable Routing Preference property for the Public IP Interface of the VpnGateway.
  final pulumi.Input<bool>? isRoutingPreferenceInternet;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// List of all the nat Rules associated with the gateway.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<VpnGatewayNatRule>>? natRules;
  /// The resource group name of the VpnGateway.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VirtualHub to which the gateway belongs.
  final pulumi.Input<SubResource>? virtualHub;
  /// The scale unit for this vpn gateway.
  final pulumi.Input<int>? vpnGatewayScaleUnit;

  /// Creates a new [VpnGatewayArgs].
  /// [bgpSettings] Local network gateway's BGP speaker settings.
  /// [connections] List of all vpn connections to the gateway.
  /// [enableBgpRouteTranslationForNat] Enable BGP routes translation for NAT on this VpnGateway.
  /// [gatewayName] The name of the gateway.
  /// [id] Resource ID.
  /// [isRoutingPreferenceInternet] Enable Routing Preference property for the Public IP Interface of the VpnGateway.
  /// [location] Resource location.
  /// [natRules] List of all the nat Rules associated with the gateway.
  /// [resourceGroupName] The resource group name of the VpnGateway.
  /// [tags] Resource tags.
  /// [virtualHub] The VirtualHub to which the gateway belongs.
  /// [vpnGatewayScaleUnit] The scale unit for this vpn gateway.
  VpnGatewayArgs({
    this.bgpSettings,
    this.connections,
    this.enableBgpRouteTranslationForNat,
    this.gatewayName,
    this.id,
    this.isRoutingPreferenceInternet,
    this.location,
    this.natRules,
    required this.resourceGroupName,
    this.tags,
    this.virtualHub,
    this.vpnGatewayScaleUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<BgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'connections': ?connections,
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'gatewayName': ?gatewayName,
      'id': ?id,
      'isRoutingPreferenceInternet': ?isRoutingPreferenceInternet,
      'location': ?location,
      'natRules': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayNatRule>, List<Map<String, dynamic>>>(natRules, (value) => pulumi.Input.encodeList<VpnGatewayNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualHub': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualHub, (value) => value.toMap()),
      'vpnGatewayScaleUnit': ?vpnGatewayScaleUnit,
    };
  }

  factory VpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VpnGatewayArgs(
      bgpSettings: map['bgpSettings'] == null ? null : (BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())).input(),
      connections: map['connections'] == null ? null : ((map['connections'] as List).cast<VpnConnectionNetwork>()).input(),
      enableBgpRouteTranslationForNat: map['enableBgpRouteTranslationForNat'] == null ? null : (map['enableBgpRouteTranslationForNat'] as bool).input(),
      gatewayName: map['gatewayName'] == null ? null : (map['gatewayName'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isRoutingPreferenceInternet: map['isRoutingPreferenceInternet'] == null ? null : (map['isRoutingPreferenceInternet'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      natRules: map['natRules'] == null ? null : (pulumi.Input.decodeList<VpnGatewayNatRule>(map['natRules'], (value) => VpnGatewayNatRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualHub: map['virtualHub'] == null ? null : (SubResource.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())).input(),
      vpnGatewayScaleUnit: map['vpnGatewayScaleUnit'] == null ? null : (map['vpnGatewayScaleUnit'] as int).input(),
    );
  }
}


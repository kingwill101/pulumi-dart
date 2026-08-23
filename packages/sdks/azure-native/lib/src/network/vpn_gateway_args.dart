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
  const VpnGatewayArgs({
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
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connections: (() { final guardedValue = map['connections']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<VpnConnectionNetwork>()); })(),
      enableBgpRouteTranslationForNat: (() { final guardedValue = map['enableBgpRouteTranslationForNat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayName: (() { final guardedValue = map['gatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isRoutingPreferenceInternet: (() { final guardedValue = map['isRoutingPreferenceInternet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natRules: (() { final guardedValue = map['natRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpnGatewayNatRule>(guardedValue, (value) => VpnGatewayNatRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHub: (() { final guardedValue = map['virtualHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnGatewayScaleUnit: (() { final guardedValue = map['vpnGatewayScaleUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

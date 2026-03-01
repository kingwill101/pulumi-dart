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
    pulumi.Output<BgpSettings>? bgpSettings,
    pulumi.Output<List<VpnConnectionNetwork>>? connections,
    pulumi.Output<bool>? enableBgpRouteTranslationForNat,
    pulumi.Output<String>? gatewayName,
    pulumi.Output<String>? id,
    pulumi.Output<bool>? isRoutingPreferenceInternet,
    pulumi.Output<String>? location,
    pulumi.Output<List<VpnGatewayNatRule>>? natRules,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SubResource>? virtualHub,
    pulumi.Output<int>? vpnGatewayScaleUnit,
  }) :
      bgpSettings = pulumi.Input.asOptionalInput<BgpSettings>(bgpSettings),
      connections = pulumi.Input.asOptionalInput<List<VpnConnectionNetwork>>(connections),
      enableBgpRouteTranslationForNat = pulumi.Input.asOptionalInput<bool>(enableBgpRouteTranslationForNat),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      isRoutingPreferenceInternet = pulumi.Input.asOptionalInput<bool>(isRoutingPreferenceInternet),
      location = pulumi.Input.asOptionalInput<String>(location),
      natRules = pulumi.Input.asOptionalInput<List<VpnGatewayNatRule>>(natRules),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHub = pulumi.Input.asOptionalInput<SubResource>(virtualHub),
      vpnGatewayScaleUnit = pulumi.Input.asOptionalInput<int>(vpnGatewayScaleUnit);

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
      bgpSettings: map['bgpSettings'] == null ? null : pulumi.Output.create<BgpSettings>(BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())),
      connections: map['connections'] == null ? null : pulumi.Output.create<List<VpnConnectionNetwork>>((map['connections'] as List).cast<VpnConnectionNetwork>()),
      enableBgpRouteTranslationForNat: map['enableBgpRouteTranslationForNat'] == null ? null : pulumi.Output.create<bool>(map['enableBgpRouteTranslationForNat'] as bool),
      gatewayName: map['gatewayName'] == null ? null : pulumi.Output.create<String>(map['gatewayName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      isRoutingPreferenceInternet: map['isRoutingPreferenceInternet'] == null ? null : pulumi.Output.create<bool>(map['isRoutingPreferenceInternet'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      natRules: map['natRules'] == null ? null : pulumi.Output.create<List<VpnGatewayNatRule>>(pulumi.Input.decodeList<VpnGatewayNatRule>(map['natRules'], (value) => VpnGatewayNatRule.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHub: map['virtualHub'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['virtualHub'] as Map).cast<String, dynamic>())),
      vpnGatewayScaleUnit: map['vpnGatewayScaleUnit'] == null ? null : pulumi.Output.create<int>(map['vpnGatewayScaleUnit'] as int),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_bgp_settings.dart';
import 'vpn_gateway_ip_configuration.dart';

/// Input properties used for looking up and filtering VpnGateway resources.
class VpnGatewayState {
  /// Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`.
  final pulumi.Input<bool>? bgpRouteTranslationForNatEnabled;
  /// A `bgp_settings` block as defined below.
  final pulumi.Input<VpnGatewayBgpSettings>? bgpSettings;
  /// An `ip_configuration` block as defined below.
  final pulumi.Input<List<VpnGatewayIpConfiguration>>? ipConfigurations;
  /// The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Defaults to `Microsoft Network`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? routingPreference;
  /// The Scale Unit for this VPN Gateway. Defaults to `1`.
  final pulumi.Input<int>? scaleUnit;
  /// A mapping of tags to assign to the VPN Gateway.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [VpnGatewayState].
  /// [bgpRouteTranslationForNatEnabled] Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`.
  /// [bgpSettings] A `bgp_settings` block as defined below.
  /// [ipConfigurations] An `ip_configuration` block as defined below.
  /// [location] The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created.
  /// [name] The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created.
  /// [routingPreference] Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Defaults to `Microsoft Network`. Changing this forces a new resource to be created.
  /// [scaleUnit] The Scale Unit for this VPN Gateway. Defaults to `1`.
  /// [tags] A mapping of tags to assign to the VPN Gateway.
  /// [virtualHubId] The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created.
  VpnGatewayState({
    this.bgpRouteTranslationForNatEnabled,
    this.bgpSettings,
    this.ipConfigurations,
    this.location,
    this.name,
    this.resourceGroupName,
    this.routingPreference,
    this.scaleUnit,
    this.tags,
    this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRouteTranslationForNatEnabled': ?bgpRouteTranslationForNatEnabled,
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<VpnGatewayBgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VpnGatewayIpConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VpnGatewayIpConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routingPreference': ?routingPreference,
      'scaleUnit': ?scaleUnit,
      'tags': ?tags,
      'virtualHubId': ?virtualHubId,
    };
  }

  factory VpnGatewayState.fromMap(Map<String, dynamic> map) {
    return VpnGatewayState(
      bgpRouteTranslationForNatEnabled: map['bgpRouteTranslationForNatEnabled'] == null ? null : (map['bgpRouteTranslationForNatEnabled']! as bool).input(),
      bgpSettings: map['bgpSettings'] == null ? null : (VpnGatewayBgpSettings.fromMap((map['bgpSettings']! as Map).cast<String, dynamic>())).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<VpnGatewayIpConfiguration>(map['ipConfigurations']!, (value) => VpnGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      routingPreference: map['routingPreference'] == null ? null : (map['routingPreference']! as String).input(),
      scaleUnit: map['scaleUnit'] == null ? null : (map['scaleUnit']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualHubId: map['virtualHubId'] == null ? null : (map['virtualHubId']! as String).input(),
    );
  }
}


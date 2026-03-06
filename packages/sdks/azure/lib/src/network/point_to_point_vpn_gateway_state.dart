// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_to_point_vpn_gateway_connection_configuration.dart';

/// Input properties used for looking up and filtering PointToPointVpnGateway resources.
class PointToPointVpnGatewayState {
  /// A `connection_configuration` block as defined below.
  final pulumi.Input<List<PointToPointVpnGatewayConnectionConfiguration>>? connectionConfigurations;
  /// A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway.
  final pulumi.Input<List<String>>? dnsServers;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? routingPreferenceInternetEnabled;
  /// The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway.
  final pulumi.Input<int>? scaleUnit;
  /// A mapping of tags to assign to the Point-to-Site VPN Gateway.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;
  /// The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created.
  final pulumi.Input<String>? vpnServerConfigurationId;

  /// Creates a new [PointToPointVpnGatewayState].
  /// [connectionConfigurations] A `connection_configuration` block as defined below.
  /// [dnsServers] A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  /// [routingPreferenceInternetEnabled] Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created.
  /// [scaleUnit] The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway.
  /// [tags] A mapping of tags to assign to the Point-to-Site VPN Gateway.
  /// [virtualHubId] The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created.
  /// [vpnServerConfigurationId] The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created.
  const PointToPointVpnGatewayState({
    this.connectionConfigurations,
    this.dnsServers,
    this.location,
    this.name,
    this.resourceGroupName,
    this.routingPreferenceInternetEnabled,
    this.scaleUnit,
    this.tags,
    this.virtualHubId,
    this.vpnServerConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PointToPointVpnGatewayConnectionConfiguration>, List<Map<String, dynamic>>>(connectionConfigurations, (value) => pulumi.Input.encodeList<PointToPointVpnGatewayConnectionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsServers': ?dnsServers,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'routingPreferenceInternetEnabled': ?routingPreferenceInternetEnabled,
      'scaleUnit': ?scaleUnit,
      'tags': ?tags,
      'virtualHubId': ?virtualHubId,
      'vpnServerConfigurationId': ?vpnServerConfigurationId,
    };
  }

  factory PointToPointVpnGatewayState.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayState(
      connectionConfigurations: (() { final guardedValue = map['connectionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PointToPointVpnGatewayConnectionConfiguration>(guardedValue, (value) => PointToPointVpnGatewayConnectionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingPreferenceInternetEnabled: (() { final guardedValue = map['routingPreferenceInternetEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scaleUnit: (() { final guardedValue = map['scaleUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualHubId: (() { final guardedValue = map['virtualHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnServerConfigurationId: (() { final guardedValue = map['vpnServerConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
  PointToPointVpnGatewayState({
    pulumi.Output<List<PointToPointVpnGatewayConnectionConfiguration>>? connectionConfigurations,
    pulumi.Output<List<String>>? dnsServers,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? routingPreferenceInternetEnabled,
    pulumi.Output<int>? scaleUnit,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualHubId,
    pulumi.Output<String>? vpnServerConfigurationId,
  }) :
      connectionConfigurations = pulumi.Input.asOptionalInput<List<PointToPointVpnGatewayConnectionConfiguration>>(connectionConfigurations),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      routingPreferenceInternetEnabled = pulumi.Input.asOptionalInput<bool>(routingPreferenceInternetEnabled),
      scaleUnit = pulumi.Input.asOptionalInput<int>(scaleUnit),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHubId = pulumi.Input.asOptionalInput<String>(virtualHubId),
      vpnServerConfigurationId = pulumi.Input.asOptionalInput<String>(vpnServerConfigurationId);

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
      connectionConfigurations: map['connectionConfigurations'] == null ? null : pulumi.Output.create<List<PointToPointVpnGatewayConnectionConfiguration>>(pulumi.Input.decodeList<PointToPointVpnGatewayConnectionConfiguration>(map['connectionConfigurations'], (value) => PointToPointVpnGatewayConnectionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      dnsServers: map['dnsServers'] == null ? null : pulumi.Output.create<List<String>>((map['dnsServers'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routingPreferenceInternetEnabled: map['routingPreferenceInternetEnabled'] == null ? null : pulumi.Output.create<bool>(map['routingPreferenceInternetEnabled'] as bool),
      scaleUnit: map['scaleUnit'] == null ? null : pulumi.Output.create<int>(map['scaleUnit'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualHubId: map['virtualHubId'] == null ? null : pulumi.Output.create<String>(map['virtualHubId'] as String),
      vpnServerConfigurationId: map['vpnServerConfigurationId'] == null ? null : pulumi.Output.create<String>(map['vpnServerConfigurationId'] as String),
    );
  }
}


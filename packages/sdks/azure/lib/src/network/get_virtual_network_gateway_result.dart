// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_network_gateway_bgp_setting.dart';
import 'get_virtual_network_gateway_custom_route.dart';
import 'get_virtual_network_gateway_ip_configuration.dart';
import 'get_virtual_network_gateway_vpn_client_configuration.dart';

/// Result data returned by getVirtualNetworkGateway.
class GetVirtualNetworkGatewayResult {
  /// Is this an Active-Active Gateway?
  final bool activeActive;
  final List<GetVirtualNetworkGatewayBgpSetting> bgpSettings;
  final List<GetVirtualNetworkGatewayCustomRoute> customRoutes;

  /// The ID of the local network gateway
  /// through which outbound Internet traffic from the virtual network in which the
  /// gateway is created will be routed (*forced tunneling*). Refer to the
  /// [Azure documentation on forced tunneling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm).
  final String defaultLocalNetworkGatewayId;

  /// Will BGP (Border Gateway Protocol) will be enabled
  /// for this Virtual Network Gateway.
  final bool enableBgp;

  /// The Generation of the Virtual Network Gateway.
  final String generation;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// One or two `ip_configuration` blocks documented below.
  final List<GetVirtualNetworkGatewayIpConfiguration> ipConfigurations;

  /// The location/region where the Virtual Network Gateway is located.
  final String location;

  /// The user-defined name of the root certificate.
  final String name;

  /// Whether a private IP will be used for this  gateway for connections.
  final bool privateIpAddressEnabled;
  final String resourceGroupName;

  /// Configuration of the size and capacity of the Virtual Network Gateway.
  final String sku;

  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// The type of the Virtual Network Gateway.
  final String type;

  /// A `vpn_client_configuration` block which is documented below.
  final List<GetVirtualNetworkGatewayVpnClientConfiguration>
  vpnClientConfigurations;

  /// The routing type of the Virtual Network Gateway.
  final String vpnType;

  /// Creates a new [GetVirtualNetworkGatewayResult].
  /// [activeActive] Is this an Active-Active Gateway?
  /// [bgpSettings] Required.
  /// [customRoutes] Required.
  /// [defaultLocalNetworkGatewayId] The ID of the local network gateway
  /// [enableBgp] Will BGP (Border Gateway Protocol) will be enabled
  /// [generation] The Generation of the Virtual Network Gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] One or two `ip_configuration` blocks documented below.
  /// [location] The location/region where the Virtual Network Gateway is located.
  /// [name] The user-defined name of the root certificate.
  /// [privateIpAddressEnabled] Whether a private IP will be used for this  gateway for connections.
  /// [resourceGroupName] Required.
  /// [sku] Configuration of the size and capacity of the Virtual Network Gateway.
  /// [tags] A mapping of tags assigned to the resource.
  /// [type] The type of the Virtual Network Gateway.
  /// [vpnClientConfigurations] A `vpn_client_configuration` block which is documented below.
  /// [vpnType] The routing type of the Virtual Network Gateway.
  GetVirtualNetworkGatewayResult({
    required this.activeActive,
    required this.bgpSettings,
    required this.customRoutes,
    required this.defaultLocalNetworkGatewayId,
    required this.enableBgp,
    required this.generation,
    required this.id,
    required this.ipConfigurations,
    required this.location,
    required this.name,
    required this.privateIpAddressEnabled,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
    required this.type,
    required this.vpnClientConfigurations,
    required this.vpnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeActive': activeActive,
      'bgpSettings':
          pulumi.Input.encodeList<
            GetVirtualNetworkGatewayBgpSetting,
            Map<String, dynamic>
          >(bgpSettings, (value) => value.toMap()),
      'customRoutes':
          pulumi.Input.encodeList<
            GetVirtualNetworkGatewayCustomRoute,
            Map<String, dynamic>
          >(customRoutes, (value) => value.toMap()),
      'defaultLocalNetworkGatewayId': defaultLocalNetworkGatewayId,
      'enableBgp': enableBgp,
      'generation': generation,
      'id': id,
      'ipConfigurations':
          pulumi.Input.encodeList<
            GetVirtualNetworkGatewayIpConfiguration,
            Map<String, dynamic>
          >(ipConfigurations, (value) => value.toMap()),
      'location': location,
      'name': name,
      'privateIpAddressEnabled': privateIpAddressEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
      'type': type,
      'vpnClientConfigurations':
          pulumi.Input.encodeList<
            GetVirtualNetworkGatewayVpnClientConfiguration,
            Map<String, dynamic>
          >(vpnClientConfigurations, (value) => value.toMap()),
      'vpnType': vpnType,
    };
  }

  factory GetVirtualNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayResult(
      activeActive: map['activeActive'] as bool,
      bgpSettings: pulumi.Input.decodeList<GetVirtualNetworkGatewayBgpSetting>(
        map['bgpSettings']!,
        (value) => GetVirtualNetworkGatewayBgpSetting.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      customRoutes:
          pulumi.Input.decodeList<GetVirtualNetworkGatewayCustomRoute>(
            map['customRoutes']!,
            (value) => GetVirtualNetworkGatewayCustomRoute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      defaultLocalNetworkGatewayId:
          map['defaultLocalNetworkGatewayId'] as String,
      enableBgp: map['enableBgp'] as bool,
      generation: map['generation'] as String,
      id: map['id'] as String,
      ipConfigurations:
          pulumi.Input.decodeList<GetVirtualNetworkGatewayIpConfiguration>(
            map['ipConfigurations']!,
            (value) => GetVirtualNetworkGatewayIpConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      location: map['location'] as String,
      name: map['name'] as String,
      privateIpAddressEnabled: map['privateIpAddressEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vpnClientConfigurations:
          pulumi
              .Input.decodeList<GetVirtualNetworkGatewayVpnClientConfiguration>(
            map['vpnClientConfigurations']!,
            (value) => GetVirtualNetworkGatewayVpnClientConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      vpnType: map['vpnType'] as String,
    );
  }
}

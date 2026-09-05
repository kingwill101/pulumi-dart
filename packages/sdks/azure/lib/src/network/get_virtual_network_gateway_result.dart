// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_network_gateway_bgp_setting.dart';
import 'get_virtual_network_gateway_custom_route.dart';
import 'get_virtual_network_gateway_ip_configuration.dart';
import 'get_virtual_network_gateway_vpn_client_configuration.dart';

/// Result data returned by getVirtualNetworkGateway.
class GetVirtualNetworkGatewayResult {
  /// Is this an Active-Active Gateway?
  final bool? activeActive;
  /// Will BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway.
  final bool? bgpEnabled;
  final List<GetVirtualNetworkGatewayBgpSetting>? bgpSettings;
  final List<GetVirtualNetworkGatewayCustomRoute>? customRoutes;
  /// The ID of the local network gateway
  /// through which outbound Internet traffic from the virtual network in which the
  /// gateway is created will be routed (*forced tunneling*). Refer to the
  /// [Azure documentation on forced tunneling](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-forced-tunneling-rm).
  final String? defaultLocalNetworkGatewayId;
  final bool? enableBgp;
  /// The Generation of the Virtual Network Gateway.
  final String? generation;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// One or two `ipConfiguration` blocks documented below.
  final List<GetVirtualNetworkGatewayIpConfiguration>? ipConfigurations;
  /// The location/region where the Virtual Network Gateway is located.
  final String? location;
  /// The user-defined name of the root certificate.
  final String? name;
  /// Whether a private IP will be used for this gateway for connections.
  final bool? privateIpAddressEnabled;
  final String? resourceGroupName;
  /// Configuration of the size and capacity of the Virtual Network Gateway.
  final String? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The type of the Virtual Network Gateway.
  final String? type;
  /// A `vpnClientConfiguration` block which is documented below.
  final List<GetVirtualNetworkGatewayVpnClientConfiguration>? vpnClientConfigurations;
  /// The routing type of the Virtual Network Gateway.
  final String? vpnType;

  /// Creates a new [GetVirtualNetworkGatewayResult].
  /// [activeActive] Is this an Active-Active Gateway?
  /// [bgpEnabled] Will BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway.
  /// [bgpSettings] Optional.
  /// [customRoutes] Optional.
  /// [defaultLocalNetworkGatewayId] The ID of the local network gateway
  /// [enableBgp] Optional.
  /// [generation] The Generation of the Virtual Network Gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipConfigurations] One or two `ipConfiguration` blocks documented below.
  /// [location] The location/region where the Virtual Network Gateway is located.
  /// [name] The user-defined name of the root certificate.
  /// [privateIpAddressEnabled] Whether a private IP will be used for this gateway for connections.
  /// [resourceGroupName] Optional.
  /// [sku] Configuration of the size and capacity of the Virtual Network Gateway.
  /// [tags] A mapping of tags assigned to the resource.
  /// [type] The type of the Virtual Network Gateway.
  /// [vpnClientConfigurations] A `vpnClientConfiguration` block which is documented below.
  /// [vpnType] The routing type of the Virtual Network Gateway.
  const GetVirtualNetworkGatewayResult({
    this.activeActive,
    this.bgpEnabled,
    this.bgpSettings,
    this.customRoutes,
    this.defaultLocalNetworkGatewayId,
    this.enableBgp,
    this.generation,
    this.id,
    this.ipConfigurations,
    this.location,
    this.name,
    this.privateIpAddressEnabled,
    this.resourceGroupName,
    this.sku,
    this.tags,
    this.type,
    this.vpnClientConfigurations,
    this.vpnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeActive': ?activeActive,
      'bgpEnabled': ?bgpEnabled,
      'bgpSettings': ?(() { final guardedValue = bgpSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualNetworkGatewayBgpSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customRoutes': ?(() { final guardedValue = customRoutes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualNetworkGatewayCustomRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultLocalNetworkGatewayId': ?defaultLocalNetworkGatewayId,
      'enableBgp': ?enableBgp,
      'generation': ?generation,
      'id': ?id,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualNetworkGatewayIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'privateIpAddressEnabled': ?privateIpAddressEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
      'type': ?type,
      'vpnClientConfigurations': ?(() { final guardedValue = vpnClientConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVirtualNetworkGatewayVpnClientConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vpnType': ?vpnType,
    };
  }

  factory GetVirtualNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayResult(
      activeActive: (() { final guardedValue = map['activeActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      bgpEnabled: (() { final guardedValue = map['bgpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualNetworkGatewayBgpSetting>(guardedValue, (value) => GetVirtualNetworkGatewayBgpSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      customRoutes: (() { final guardedValue = map['customRoutes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualNetworkGatewayCustomRoute>(guardedValue, (value) => GetVirtualNetworkGatewayCustomRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultLocalNetworkGatewayId: (() { final guardedValue = map['defaultLocalNetworkGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualNetworkGatewayIpConfiguration>(guardedValue, (value) => GetVirtualNetworkGatewayIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddressEnabled: (() { final guardedValue = map['privateIpAddressEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnClientConfigurations: (() { final guardedValue = map['vpnClientConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVirtualNetworkGatewayVpnClientConfiguration>(guardedValue, (value) => GetVirtualNetworkGatewayVpnClientConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      vpnType: (() { final guardedValue = map['vpnType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

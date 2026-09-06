// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'bgp_settings_response.dart';
import 'extended_location_response.dart';
import 'managed_service_identity_response.dart';
import 'sub_resource_response.dart';
import 'virtual_network_gateway_auto_scale_configuration_response.dart';
import 'virtual_network_gateway_ipconfiguration_response.dart';
import 'virtual_network_gateway_nat_rule_response.dart';
import 'virtual_network_gateway_policy_group_response.dart';
import 'virtual_network_gateway_sku_response.dart';
import 'vpn_client_configuration_response.dart';

/// Result data returned by getVirtualNetworkGateway.
class GetVirtualNetworkGatewayResult {
  /// ActiveActive flag.
  final bool? activeActive;
  /// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  final String? adminState;
  /// Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  final bool? allowRemoteVnetTraffic;
  /// Configures this gateway to accept traffic from remote Virtual WAN networks.
  final bool? allowVirtualWanTraffic;
  /// Autoscale configuration for virutal network gateway
  final VirtualNetworkGatewayAutoScaleConfigurationResponse? autoScaleConfiguration;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Virtual network gateway's BGP speaker settings.
  final BgpSettingsResponse? bgpSettings;
  /// The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  final AddressSpaceResponse? customRoutes;
  /// disableIPSecReplayProtection flag.
  final bool? disableIPSecReplayProtection;
  /// Whether BGP is enabled for this virtual network gateway or not.
  final bool? enableBgp;
  /// EnableBgpRouteTranslationForNat flag.
  final bool? enableBgpRouteTranslationForNat;
  /// Whether dns forwarding is enabled or not.
  final bool? enableDnsForwarding;
  /// Whether private IP needs to be enabled on this gateway for connections or not.
  final bool? enablePrivateIpAddress;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// The extended location of type local virtual network gateway.
  final ExtendedLocationResponse? extendedLocation;
  /// The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  final SubResourceResponse? gatewayDefaultSite;
  /// The type of this virtual network gateway.
  final String? gatewayType;
  /// Resource ID.
  final String? id;
  /// The identity of the virtual network gateway, if configured.
  final ManagedServiceIdentityResponse? identity;
  /// The IP address allocated by the gateway to which dns requests can be sent.
  final String? inboundDnsForwardingEndpoint;
  /// IP configurations for virtual network gateway.
  final List<VirtualNetworkGatewayIPConfigurationResponse>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// NatRules for virtual network gateway.
  final List<VirtualNetworkGatewayNatRuleResponse>? natRules;
  /// The provisioning state of the virtual network gateway resource.
  final String? provisioningState;
  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  final String? resiliencyModel;
  /// The resource GUID property of the virtual network gateway resource.
  final String? resourceGuid;
  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  final VirtualNetworkGatewaySkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  final String? vNetExtendedLocationResourceId;
  /// The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  final List<VirtualNetworkGatewayPolicyGroupResponse>? virtualNetworkGatewayPolicyGroups;
  /// The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  final VpnClientConfigurationResponse? vpnClientConfiguration;
  /// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  final String? vpnGatewayGeneration;
  /// The type of this virtual network gateway.
  final String? vpnType;

  /// Creates a new [GetVirtualNetworkGatewayResult].
  /// [activeActive] ActiveActive flag.
  /// [adminState] Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  /// [allowRemoteVnetTraffic] Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  /// [allowVirtualWanTraffic] Configures this gateway to accept traffic from remote Virtual WAN networks.
  /// [autoScaleConfiguration] Autoscale configuration for virutal network gateway
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bgpSettings] Virtual network gateway's BGP speaker settings.
  /// [customRoutes] The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  /// [disableIPSecReplayProtection] disableIPSecReplayProtection flag.
  /// [enableBgp] Whether BGP is enabled for this virtual network gateway or not.
  /// [enableBgpRouteTranslationForNat] EnableBgpRouteTranslationForNat flag.
  /// [enableDnsForwarding] Whether dns forwarding is enabled or not.
  /// [enablePrivateIpAddress] Whether private IP needs to be enabled on this gateway for connections or not.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [extendedLocation] The extended location of type local virtual network gateway.
  /// [gatewayDefaultSite] The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  /// [gatewayType] The type of this virtual network gateway.
  /// [id] Resource ID.
  /// [identity] The identity of the virtual network gateway, if configured.
  /// [inboundDnsForwardingEndpoint] The IP address allocated by the gateway to which dns requests can be sent.
  /// [ipConfigurations] IP configurations for virtual network gateway.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [natRules] NatRules for virtual network gateway.
  /// [provisioningState] The provisioning state of the virtual network gateway resource.
  /// [resiliencyModel] Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  /// [resourceGuid] The resource GUID property of the virtual network gateway resource.
  /// [sku] The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [vNetExtendedLocationResourceId] Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  /// [virtualNetworkGatewayPolicyGroups] The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  /// [vpnClientConfiguration] The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  /// [vpnGatewayGeneration] The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  /// [vpnType] The type of this virtual network gateway.
  const GetVirtualNetworkGatewayResult({
    this.activeActive,
    this.adminState,
    this.allowRemoteVnetTraffic,
    this.allowVirtualWanTraffic,
    this.autoScaleConfiguration,
    this.azureApiVersion,
    this.bgpSettings,
    this.customRoutes,
    this.disableIPSecReplayProtection,
    this.enableBgp,
    this.enableBgpRouteTranslationForNat,
    this.enableDnsForwarding,
    this.enablePrivateIpAddress,
    this.etag,
    this.extendedLocation,
    this.gatewayDefaultSite,
    this.gatewayType,
    this.id,
    this.identity,
    this.inboundDnsForwardingEndpoint,
    this.ipConfigurations,
    this.location,
    this.name,
    this.natRules,
    this.provisioningState,
    this.resiliencyModel,
    this.resourceGuid,
    this.sku,
    this.tags,
    this.type,
    this.vNetExtendedLocationResourceId,
    this.virtualNetworkGatewayPolicyGroups,
    this.vpnClientConfiguration,
    this.vpnGatewayGeneration,
    this.vpnType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeActive': ?activeActive,
      'adminState': ?adminState,
      'allowRemoteVnetTraffic': ?allowRemoteVnetTraffic,
      'allowVirtualWanTraffic': ?allowVirtualWanTraffic,
      'autoScaleConfiguration': ?autoScaleConfiguration?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'bgpSettings': ?bgpSettings?.toMap(),
      'customRoutes': ?customRoutes?.toMap(),
      'disableIPSecReplayProtection': ?disableIPSecReplayProtection,
      'enableBgp': ?enableBgp,
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'enableDnsForwarding': ?enableDnsForwarding,
      'enablePrivateIpAddress': ?enablePrivateIpAddress,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'gatewayDefaultSite': ?gatewayDefaultSite?.toMap(),
      'gatewayType': ?gatewayType,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'inboundDnsForwardingEndpoint': ?inboundDnsForwardingEndpoint,
      'ipConfigurations': ?(() { final guardedValue = ipConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkGatewayIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'natRules': ?(() { final guardedValue = natRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'resiliencyModel': ?resiliencyModel,
      'resourceGuid': ?resourceGuid,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vNetExtendedLocationResourceId': ?vNetExtendedLocationResourceId,
      'virtualNetworkGatewayPolicyGroups': ?(() { final guardedValue = virtualNetworkGatewayPolicyGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroupResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'vpnClientConfiguration': ?vpnClientConfiguration?.toMap(),
      'vpnGatewayGeneration': ?vpnGatewayGeneration,
      'vpnType': ?vpnType,
    };
  }

  factory GetVirtualNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayResult(
      activeActive: (() { final guardedValue = map['activeActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      adminState: (() { final guardedValue = map['adminState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowRemoteVnetTraffic: (() { final guardedValue = map['allowRemoteVnetTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowVirtualWanTraffic: (() { final guardedValue = map['allowVirtualWanTraffic']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      autoScaleConfiguration: (() { final guardedValue = map['autoScaleConfiguration']; if (guardedValue == null) return null; return VirtualNetworkGatewayAutoScaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      customRoutes: (() { final guardedValue = map['customRoutes']; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      disableIPSecReplayProtection: (() { final guardedValue = map['disableIPSecReplayProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableBgpRouteTranslationForNat: (() { final guardedValue = map['enableBgpRouteTranslationForNat']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDnsForwarding: (() { final guardedValue = map['enableDnsForwarding']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePrivateIpAddress: (() { final guardedValue = map['enablePrivateIpAddress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayDefaultSite: (() { final guardedValue = map['gatewayDefaultSite']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      gatewayType: (() { final guardedValue = map['gatewayType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      inboundDnsForwardingEndpoint: (() { final guardedValue = map['inboundDnsForwardingEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkGatewayIPConfigurationResponse>(guardedValue, (value) => VirtualNetworkGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natRules: (() { final guardedValue = map['natRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleResponse>(guardedValue, (value) => VirtualNetworkGatewayNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resiliencyModel: (() { final guardedValue = map['resiliencyModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return VirtualNetworkGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vNetExtendedLocationResourceId: (() { final guardedValue = map['vNetExtendedLocationResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkGatewayPolicyGroups: (() { final guardedValue = map['virtualNetworkGatewayPolicyGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupResponse>(guardedValue, (value) => VirtualNetworkGatewayPolicyGroupResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      vpnClientConfiguration: (() { final guardedValue = map['vpnClientConfiguration']; if (guardedValue == null) return null; return VpnClientConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vpnGatewayGeneration: (() { final guardedValue = map['vpnGatewayGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnType: (() { final guardedValue = map['vpnType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

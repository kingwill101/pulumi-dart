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

/// A common class for general resource information.
class VirtualNetworkGatewayResponse {
  /// ActiveActive flag.
  final pulumi.Input<bool?>? activeActive;
  /// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  final pulumi.Input<String?>? adminState;
  /// Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  final pulumi.Input<bool?>? allowRemoteVnetTraffic;
  /// Configures this gateway to accept traffic from remote Virtual WAN networks.
  final pulumi.Input<bool?>? allowVirtualWanTraffic;
  /// Autoscale configuration for virutal network gateway
  final pulumi.Input<VirtualNetworkGatewayAutoScaleConfigurationResponse?>? autoScaleConfiguration;
  /// Virtual network gateway's BGP speaker settings.
  final pulumi.Input<BgpSettingsResponse?>? bgpSettings;
  /// The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  final pulumi.Input<AddressSpaceResponse?>? customRoutes;
  /// disableIPSecReplayProtection flag.
  final pulumi.Input<bool?>? disableIPSecReplayProtection;
  /// Whether BGP is enabled for this virtual network gateway or not.
  final pulumi.Input<bool?>? enableBgp;
  /// EnableBgpRouteTranslationForNat flag.
  final pulumi.Input<bool?>? enableBgpRouteTranslationForNat;
  /// Whether dns forwarding is enabled or not.
  final pulumi.Input<bool?>? enableDnsForwarding;
  /// Whether private IP needs to be enabled on this gateway for connections or not.
  final pulumi.Input<bool?>? enablePrivateIpAddress;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The extended location of type local virtual network gateway.
  final pulumi.Input<ExtendedLocationResponse?>? extendedLocation;
  /// The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  final pulumi.Input<SubResourceResponse?>? gatewayDefaultSite;
  /// The type of this virtual network gateway.
  final pulumi.Input<String?>? gatewayType;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The identity of the virtual network gateway, if configured.
  final pulumi.Input<ManagedServiceIdentityResponse?>? identity;
  /// The IP address allocated by the gateway to which dns requests can be sent.
  final pulumi.Input<String> inboundDnsForwardingEndpoint;
  /// IP configurations for virtual network gateway.
  final pulumi.Input<List<VirtualNetworkGatewayIPConfigurationResponse>?>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// NatRules for virtual network gateway.
  final pulumi.Input<List<VirtualNetworkGatewayNatRuleResponse>?>? natRules;
  /// The provisioning state of the virtual network gateway resource.
  final pulumi.Input<String> provisioningState;
  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  final pulumi.Input<String?>? resiliencyModel;
  /// The resource GUID property of the virtual network gateway resource.
  final pulumi.Input<String> resourceGuid;
  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  final pulumi.Input<VirtualNetworkGatewaySkuResponse?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Resource type.
  final pulumi.Input<String> type;
  /// Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  final pulumi.Input<String?>? vNetExtendedLocationResourceId;
  /// The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroupResponse>?>? virtualNetworkGatewayPolicyGroups;
  /// The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  final pulumi.Input<VpnClientConfigurationResponse?>? vpnClientConfiguration;
  /// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  final pulumi.Input<String?>? vpnGatewayGeneration;
  /// The type of this virtual network gateway.
  final pulumi.Input<String?>? vpnType;

  /// Creates a new [VirtualNetworkGatewayResponse].
  /// [activeActive] ActiveActive flag.
  /// [adminState] Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  /// [allowRemoteVnetTraffic] Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  /// [allowVirtualWanTraffic] Configures this gateway to accept traffic from remote Virtual WAN networks.
  /// [autoScaleConfiguration] Autoscale configuration for virutal network gateway
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
  const VirtualNetworkGatewayResponse({
    this.activeActive,
    this.adminState,
    this.allowRemoteVnetTraffic,
    this.allowVirtualWanTraffic,
    this.autoScaleConfiguration,
    this.bgpSettings,
    this.customRoutes,
    this.disableIPSecReplayProtection,
    this.enableBgp,
    this.enableBgpRouteTranslationForNat,
    this.enableDnsForwarding,
    this.enablePrivateIpAddress,
    required this.etag,
    this.extendedLocation,
    this.gatewayDefaultSite,
    this.gatewayType,
    this.id,
    this.identity,
    required this.inboundDnsForwardingEndpoint,
    this.ipConfigurations,
    this.location,
    required this.name,
    this.natRules,
    required this.provisioningState,
    this.resiliencyModel,
    required this.resourceGuid,
    this.sku,
    this.tags,
    required this.type,
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
      'autoScaleConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayAutoScaleConfigurationResponse, Map<String, dynamic>>(autoScaleConfiguration, (value) => value.toMap()),
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<BgpSettingsResponse, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'customRoutes': ?pulumi.Input.mapOptionalInputValue<AddressSpaceResponse, Map<String, dynamic>>(customRoutes, (value) => value.toMap()),
      'disableIPSecReplayProtection': ?disableIPSecReplayProtection,
      'enableBgp': ?enableBgp,
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'enableDnsForwarding': ?enableDnsForwarding,
      'enablePrivateIpAddress': ?enablePrivateIpAddress,
      'etag': etag,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocationResponse, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'gatewayDefaultSite': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(gatewayDefaultSite, (value) => value.toMap()),
      'gatewayType': ?gatewayType,
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inboundDnsForwardingEndpoint': inboundDnsForwardingEndpoint,
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayIPConfigurationResponse>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': name,
      'natRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayNatRuleResponse>, List<Map<String, dynamic>>>(natRules, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resiliencyModel': ?resiliencyModel,
      'resourceGuid': resourceGuid,
      'sku': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewaySkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'vNetExtendedLocationResourceId': ?vNetExtendedLocationResourceId,
      'virtualNetworkGatewayPolicyGroups': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayPolicyGroupResponse>, List<Map<String, dynamic>>>(virtualNetworkGatewayPolicyGroups, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientConfiguration': ?pulumi.Input.mapOptionalInputValue<VpnClientConfigurationResponse, Map<String, dynamic>>(vpnClientConfiguration, (value) => value.toMap()),
      'vpnGatewayGeneration': ?vpnGatewayGeneration,
      'vpnType': ?vpnType,
    };
  }

  factory VirtualNetworkGatewayResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayResponse(
      activeActive: (() { final guardedValue = map['activeActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      adminState: (() { final guardedValue = map['adminState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowRemoteVnetTraffic: (() { final guardedValue = map['allowRemoteVnetTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVirtualWanTraffic: (() { final guardedValue = map['allowVirtualWanTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoScaleConfiguration: (() { final guardedValue = map['autoScaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewayAutoScaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customRoutes: (() { final guardedValue = map['customRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableIPSecReplayProtection: (() { final guardedValue = map['disableIPSecReplayProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableBgpRouteTranslationForNat: (() { final guardedValue = map['enableBgpRouteTranslationForNat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDnsForwarding: (() { final guardedValue = map['enableDnsForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateIpAddress: (() { final guardedValue = map['enablePrivateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayDefaultSite: (() { final guardedValue = map['gatewayDefaultSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayType: (() { final guardedValue = map['gatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundDnsForwardingEndpoint: pulumi.Input.fromValue(map['inboundDnsForwardingEndpoint'] as String),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayIPConfigurationResponse>(guardedValue, (value) => VirtualNetworkGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      natRules: (() { final guardedValue = map['natRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleResponse>(guardedValue, (value) => VirtualNetworkGatewayNatRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resiliencyModel: (() { final guardedValue = map['resiliencyModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vNetExtendedLocationResourceId: (() { final guardedValue = map['vNetExtendedLocationResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkGatewayPolicyGroups: (() { final guardedValue = map['virtualNetworkGatewayPolicyGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupResponse>(guardedValue, (value) => VirtualNetworkGatewayPolicyGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientConfiguration: (() { final guardedValue = map['vpnClientConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnClientConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnGatewayGeneration: (() { final guardedValue = map['vpnGatewayGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnType: (() { final guardedValue = map['vpnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

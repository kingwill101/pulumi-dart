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
  final String azureApiVersion;
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
  final String etag;
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
  final String inboundDnsForwardingEndpoint;
  /// IP configurations for virtual network gateway.
  final List<VirtualNetworkGatewayIPConfigurationResponse>? ipConfigurations;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// NatRules for virtual network gateway.
  final List<VirtualNetworkGatewayNatRuleResponse>? natRules;
  /// The provisioning state of the virtual network gateway resource.
  final String provisioningState;
  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  final String? resiliencyModel;
  /// The resource GUID property of the virtual network gateway resource.
  final String resourceGuid;
  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  final VirtualNetworkGatewaySkuResponse? sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
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
  GetVirtualNetworkGatewayResult({
    this.activeActive,
    this.adminState,
    this.allowRemoteVnetTraffic,
    this.allowVirtualWanTraffic,
    this.autoScaleConfiguration,
    required this.azureApiVersion,
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
      'autoScaleConfiguration': ?autoScaleConfiguration == null ? null : autoScaleConfiguration!.toMap(),
      'azureApiVersion': azureApiVersion,
      'bgpSettings': ?bgpSettings == null ? null : bgpSettings!.toMap(),
      'customRoutes': ?customRoutes == null ? null : customRoutes!.toMap(),
      'disableIPSecReplayProtection': ?disableIPSecReplayProtection,
      'enableBgp': ?enableBgp,
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'enableDnsForwarding': ?enableDnsForwarding,
      'enablePrivateIpAddress': ?enablePrivateIpAddress,
      'etag': etag,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'gatewayDefaultSite': ?gatewayDefaultSite == null ? null : gatewayDefaultSite!.toMap(),
      'gatewayType': ?gatewayType,
      'id': ?id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inboundDnsForwardingEndpoint': inboundDnsForwardingEndpoint,
      'ipConfigurations': ?ipConfigurations == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayIPConfigurationResponse, Map<String, dynamic>>(ipConfigurations!, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'natRules': ?natRules == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayNatRuleResponse, Map<String, dynamic>>(natRules!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resiliencyModel': ?resiliencyModel,
      'resourceGuid': resourceGuid,
      'sku': ?sku == null ? null : sku!.toMap(),
      'tags': ?tags,
      'type': type,
      'vNetExtendedLocationResourceId': ?vNetExtendedLocationResourceId,
      'virtualNetworkGatewayPolicyGroups': ?virtualNetworkGatewayPolicyGroups == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroupResponse, Map<String, dynamic>>(virtualNetworkGatewayPolicyGroups!, (value) => value.toMap()),
      'vpnClientConfiguration': ?vpnClientConfiguration == null ? null : vpnClientConfiguration!.toMap(),
      'vpnGatewayGeneration': ?vpnGatewayGeneration,
      'vpnType': ?vpnType,
    };
  }

  factory GetVirtualNetworkGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayResult(
      activeActive: map['activeActive'] == null ? null : map['activeActive']! as bool,
      adminState: map['adminState'] == null ? null : map['adminState']! as String,
      allowRemoteVnetTraffic: map['allowRemoteVnetTraffic'] == null ? null : map['allowRemoteVnetTraffic']! as bool,
      allowVirtualWanTraffic: map['allowVirtualWanTraffic'] == null ? null : map['allowVirtualWanTraffic']! as bool,
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : VirtualNetworkGatewayAutoScaleConfigurationResponse.fromMap((map['autoScaleConfiguration']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      bgpSettings: map['bgpSettings'] == null ? null : BgpSettingsResponse.fromMap((map['bgpSettings']! as Map).cast<String, dynamic>()),
      customRoutes: map['customRoutes'] == null ? null : AddressSpaceResponse.fromMap((map['customRoutes']! as Map).cast<String, dynamic>()),
      disableIPSecReplayProtection: map['disableIPSecReplayProtection'] == null ? null : map['disableIPSecReplayProtection']! as bool,
      enableBgp: map['enableBgp'] == null ? null : map['enableBgp']! as bool,
      enableBgpRouteTranslationForNat: map['enableBgpRouteTranslationForNat'] == null ? null : map['enableBgpRouteTranslationForNat']! as bool,
      enableDnsForwarding: map['enableDnsForwarding'] == null ? null : map['enableDnsForwarding']! as bool,
      enablePrivateIpAddress: map['enablePrivateIpAddress'] == null ? null : map['enablePrivateIpAddress']! as bool,
      etag: map['etag'] as String,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      gatewayDefaultSite: map['gatewayDefaultSite'] == null ? null : SubResourceResponse.fromMap((map['gatewayDefaultSite']! as Map).cast<String, dynamic>()),
      gatewayType: map['gatewayType'] == null ? null : map['gatewayType']! as String,
      id: map['id'] == null ? null : map['id']! as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      inboundDnsForwardingEndpoint: map['inboundDnsForwardingEndpoint'] as String,
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayIPConfigurationResponse>(map['ipConfigurations']!, (value) => VirtualNetworkGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      natRules: map['natRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayNatRuleResponse>(map['natRules']!, (value) => VirtualNetworkGatewayNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resiliencyModel: map['resiliencyModel'] == null ? null : map['resiliencyModel']! as String,
      resourceGuid: map['resourceGuid'] as String,
      sku: map['sku'] == null ? null : VirtualNetworkGatewaySkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      vNetExtendedLocationResourceId: map['vNetExtendedLocationResourceId'] == null ? null : map['vNetExtendedLocationResourceId']! as String,
      virtualNetworkGatewayPolicyGroups: map['virtualNetworkGatewayPolicyGroups'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroupResponse>(map['virtualNetworkGatewayPolicyGroups']!, (value) => VirtualNetworkGatewayPolicyGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpnClientConfiguration: map['vpnClientConfiguration'] == null ? null : VpnClientConfigurationResponse.fromMap((map['vpnClientConfiguration']! as Map).cast<String, dynamic>()),
      vpnGatewayGeneration: map['vpnGatewayGeneration'] == null ? null : map['vpnGatewayGeneration']! as String,
      vpnType: map['vpnType'] == null ? null : map['vpnType']! as String,
    );
  }
}


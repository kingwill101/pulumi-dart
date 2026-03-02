// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'bgp_settings.dart';
import 'extended_location.dart';
import 'managed_service_identity.dart';
import 'sub_resource.dart';
import 'virtual_network_gateway_auto_scale_configuration.dart';
import 'virtual_network_gateway_ipconfiguration.dart';
import 'virtual_network_gateway_nat_rule_network.dart';
import 'virtual_network_gateway_policy_group.dart';
import 'virtual_network_gateway_sku.dart';
import 'vpn_client_configuration.dart';

/// {@template pulumi_network_virtual_network_gateway_args_doc}
/// The set of arguments for VirtualNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_gateway_args_doc}
class VirtualNetworkGatewayArgs {
  /// ActiveActive flag.
  final pulumi.Input<bool>? activeActive;
  /// Property to indicate if the Express Route Gateway serves traffic when there are multiple Express Route Gateways in the vnet
  final pulumi.Input<String>? adminState;
  /// Configure this gateway to accept traffic from other Azure Virtual Networks. This configuration does not support connectivity to Azure Virtual WAN.
  final pulumi.Input<bool>? allowRemoteVnetTraffic;
  /// Configures this gateway to accept traffic from remote Virtual WAN networks.
  final pulumi.Input<bool>? allowVirtualWanTraffic;
  /// Autoscale configuration for virutal network gateway
  final pulumi.Input<VirtualNetworkGatewayAutoScaleConfiguration>? autoScaleConfiguration;
  /// Virtual network gateway's BGP speaker settings.
  final pulumi.Input<BgpSettings>? bgpSettings;
  /// The reference to the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient.
  final pulumi.Input<AddressSpace>? customRoutes;
  /// disableIPSecReplayProtection flag.
  final pulumi.Input<bool>? disableIPSecReplayProtection;
  /// Whether BGP is enabled for this virtual network gateway or not.
  final pulumi.Input<bool>? enableBgp;
  /// EnableBgpRouteTranslationForNat flag.
  final pulumi.Input<bool>? enableBgpRouteTranslationForNat;
  /// Whether dns forwarding is enabled or not.
  final pulumi.Input<bool>? enableDnsForwarding;
  /// Whether private IP needs to be enabled on this gateway for connections or not.
  final pulumi.Input<bool>? enablePrivateIpAddress;
  /// The extended location of type local virtual network gateway.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  final pulumi.Input<SubResource>? gatewayDefaultSite;
  /// The type of this virtual network gateway.
  final pulumi.Input<String>? gatewayType;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The identity of the virtual network gateway, if configured.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// IP configurations for virtual network gateway.
  final pulumi.Input<List<VirtualNetworkGatewayIPConfiguration>>? ipConfigurations;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// NatRules for virtual network gateway.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<VirtualNetworkGatewayNatRuleNetwork>>? natRules;
  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  final pulumi.Input<String>? resiliencyModel;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  final pulumi.Input<VirtualNetworkGatewaySku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  final pulumi.Input<String>? vNetExtendedLocationResourceId;
  /// The name of the virtual network gateway.
  final pulumi.Input<String>? virtualNetworkGatewayName;
  /// The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroup>>? virtualNetworkGatewayPolicyGroups;
  /// The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  final pulumi.Input<VpnClientConfiguration>? vpnClientConfiguration;
  /// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  final pulumi.Input<String>? vpnGatewayGeneration;
  /// The type of this virtual network gateway.
  final pulumi.Input<String>? vpnType;

  /// Creates a new [VirtualNetworkGatewayArgs].
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
  /// [extendedLocation] The extended location of type local virtual network gateway.
  /// [gatewayDefaultSite] The reference to the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting.
  /// [gatewayType] The type of this virtual network gateway.
  /// [id] Resource ID.
  /// [identity] The identity of the virtual network gateway, if configured.
  /// [ipConfigurations] IP configurations for virtual network gateway.
  /// [location] Resource location.
  /// [natRules] NatRules for virtual network gateway.
  /// [resiliencyModel] Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  /// [resourceGroupName] The name of the resource group.
  /// [sku] The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  /// [tags] Resource tags.
  /// [vNetExtendedLocationResourceId] Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  /// [virtualNetworkGatewayName] The name of the virtual network gateway.
  /// [virtualNetworkGatewayPolicyGroups] The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  /// [vpnClientConfiguration] The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  /// [vpnGatewayGeneration] The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  /// [vpnType] The type of this virtual network gateway.
  VirtualNetworkGatewayArgs({
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
    this.extendedLocation,
    this.gatewayDefaultSite,
    this.gatewayType,
    this.id,
    this.identity,
    this.ipConfigurations,
    this.location,
    this.natRules,
    this.resiliencyModel,
    required this.resourceGroupName,
    this.sku,
    this.tags,
    this.vNetExtendedLocationResourceId,
    this.virtualNetworkGatewayName,
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
      'autoScaleConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewayAutoScaleConfiguration, Map<String, dynamic>>(autoScaleConfiguration, (value) => value.toMap()),
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<BgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'customRoutes': ?pulumi.Input.mapOptionalInputValue<AddressSpace, Map<String, dynamic>>(customRoutes, (value) => value.toMap()),
      'disableIPSecReplayProtection': ?disableIPSecReplayProtection,
      'enableBgp': ?enableBgp,
      'enableBgpRouteTranslationForNat': ?enableBgpRouteTranslationForNat,
      'enableDnsForwarding': ?enableDnsForwarding,
      'enablePrivateIpAddress': ?enablePrivateIpAddress,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'gatewayDefaultSite': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(gatewayDefaultSite, (value) => value.toMap()),
      'gatewayType': ?gatewayType,
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayIPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'natRules': ?natRules,
      'resiliencyModel': ?resiliencyModel,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'vNetExtendedLocationResourceId': ?vNetExtendedLocationResourceId,
      'virtualNetworkGatewayName': ?virtualNetworkGatewayName,
      'virtualNetworkGatewayPolicyGroups': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayPolicyGroup>, List<Map<String, dynamic>>>(virtualNetworkGatewayPolicyGroups, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientConfiguration': ?pulumi.Input.mapOptionalInputValue<VpnClientConfiguration, Map<String, dynamic>>(vpnClientConfiguration, (value) => value.toMap()),
      'vpnGatewayGeneration': ?vpnGatewayGeneration,
      'vpnType': ?vpnType,
    };
  }

  factory VirtualNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayArgs(
      activeActive: map['activeActive'] == null ? null : (map['activeActive']! as bool).input(),
      adminState: map['adminState'] == null ? null : (map['adminState']! as String).input(),
      allowRemoteVnetTraffic: map['allowRemoteVnetTraffic'] == null ? null : (map['allowRemoteVnetTraffic']! as bool).input(),
      allowVirtualWanTraffic: map['allowVirtualWanTraffic'] == null ? null : (map['allowVirtualWanTraffic']! as bool).input(),
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : (VirtualNetworkGatewayAutoScaleConfiguration.fromMap((map['autoScaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      bgpSettings: map['bgpSettings'] == null ? null : (BgpSettings.fromMap((map['bgpSettings']! as Map).cast<String, dynamic>())).input(),
      customRoutes: map['customRoutes'] == null ? null : (AddressSpace.fromMap((map['customRoutes']! as Map).cast<String, dynamic>())).input(),
      disableIPSecReplayProtection: map['disableIPSecReplayProtection'] == null ? null : (map['disableIPSecReplayProtection']! as bool).input(),
      enableBgp: map['enableBgp'] == null ? null : (map['enableBgp']! as bool).input(),
      enableBgpRouteTranslationForNat: map['enableBgpRouteTranslationForNat'] == null ? null : (map['enableBgpRouteTranslationForNat']! as bool).input(),
      enableDnsForwarding: map['enableDnsForwarding'] == null ? null : (map['enableDnsForwarding']! as bool).input(),
      enablePrivateIpAddress: map['enablePrivateIpAddress'] == null ? null : (map['enablePrivateIpAddress']! as bool).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      gatewayDefaultSite: map['gatewayDefaultSite'] == null ? null : (SubResource.fromMap((map['gatewayDefaultSite']! as Map).cast<String, dynamic>())).input(),
      gatewayType: map['gatewayType'] == null ? null : (map['gatewayType']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayIPConfiguration>(map['ipConfigurations']!, (value) => VirtualNetworkGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      natRules: map['natRules'] == null ? null : ((map['natRules']! as List).cast<VirtualNetworkGatewayNatRuleNetwork>()).input(),
      resiliencyModel: map['resiliencyModel'] == null ? null : (map['resiliencyModel']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (VirtualNetworkGatewaySku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vNetExtendedLocationResourceId: map['vNetExtendedLocationResourceId'] == null ? null : (map['vNetExtendedLocationResourceId']! as String).input(),
      virtualNetworkGatewayName: map['virtualNetworkGatewayName'] == null ? null : (map['virtualNetworkGatewayName']! as String).input(),
      virtualNetworkGatewayPolicyGroups: map['virtualNetworkGatewayPolicyGroups'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroup>(map['virtualNetworkGatewayPolicyGroups']!, (value) => VirtualNetworkGatewayPolicyGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnClientConfiguration: map['vpnClientConfiguration'] == null ? null : (VpnClientConfiguration.fromMap((map['vpnClientConfiguration']! as Map).cast<String, dynamic>())).input(),
      vpnGatewayGeneration: map['vpnGatewayGeneration'] == null ? null : (map['vpnGatewayGeneration']! as String).input(),
      vpnType: map['vpnType'] == null ? null : (map['vpnType']! as String).input(),
    );
  }
}


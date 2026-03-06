// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space.dart';
import 'bgp_settings.dart';
import 'extended_location.dart';
import 'managed_service_identity.dart';
import 'sub_resource.dart';
import 'virtual_network_gateway_auto_scale_configuration.dart';
import 'virtual_network_gateway_ipconfiguration.dart';
import 'virtual_network_gateway_nat_rule.dart';
import 'virtual_network_gateway_policy_group.dart';
import 'virtual_network_gateway_sku.dart';
import 'vpn_client_configuration.dart';

/// A common class for general resource information.
class VirtualNetworkGateway {
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
  final pulumi.Input<List<VirtualNetworkGatewayNatRule>>? natRules;
  /// Property to indicate if the Express Route Gateway has resiliency model of MultiHomed or SingleHomed
  final pulumi.Input<String>? resiliencyModel;
  /// The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  final pulumi.Input<VirtualNetworkGatewaySku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  final pulumi.Input<String>? vNetExtendedLocationResourceId;
  /// The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  final pulumi.Input<List<VirtualNetworkGatewayPolicyGroup>>? virtualNetworkGatewayPolicyGroups;
  /// The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  final pulumi.Input<VpnClientConfiguration>? vpnClientConfiguration;
  /// The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  final pulumi.Input<String>? vpnGatewayGeneration;
  /// The type of this virtual network gateway.
  final pulumi.Input<String>? vpnType;

  /// Creates a new [VirtualNetworkGateway].
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
  /// [sku] The reference to the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway.
  /// [tags] Resource tags.
  /// [vNetExtendedLocationResourceId] Customer vnet resource id. VirtualNetworkGateway of type local gateway is associated with the customer vnet.
  /// [virtualNetworkGatewayPolicyGroups] The reference to the VirtualNetworkGatewayPolicyGroup resource which represents the available VirtualNetworkGatewayPolicyGroup for the gateway.
  /// [vpnClientConfiguration] The reference to the VpnClientConfiguration resource which represents the P2S VpnClient configurations.
  /// [vpnGatewayGeneration] The generation for this VirtualNetworkGateway. Must be None if gatewayType is not VPN.
  /// [vpnType] The type of this virtual network gateway.
  const VirtualNetworkGateway({
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
    this.sku,
    this.tags,
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
      'natRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayNatRule>, List<Map<String, dynamic>>>(natRules, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resiliencyModel': ?resiliencyModel,
      'sku': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'vNetExtendedLocationResourceId': ?vNetExtendedLocationResourceId,
      'virtualNetworkGatewayPolicyGroups': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkGatewayPolicyGroup>, List<Map<String, dynamic>>>(virtualNetworkGatewayPolicyGroups, (value) => pulumi.Input.encodeList<VirtualNetworkGatewayPolicyGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnClientConfiguration': ?pulumi.Input.mapOptionalInputValue<VpnClientConfiguration, Map<String, dynamic>>(vpnClientConfiguration, (value) => value.toMap()),
      'vpnGatewayGeneration': ?vpnGatewayGeneration,
      'vpnType': ?vpnType,
    };
  }

  factory VirtualNetworkGateway.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGateway(
      activeActive: (() { final guardedValue = map['activeActive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      adminState: (() { final guardedValue = map['adminState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowRemoteVnetTraffic: (() { final guardedValue = map['allowRemoteVnetTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowVirtualWanTraffic: (() { final guardedValue = map['allowVirtualWanTraffic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoScaleConfiguration: (() { final guardedValue = map['autoScaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewayAutoScaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bgpSettings: (() { final guardedValue = map['bgpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customRoutes: (() { final guardedValue = map['customRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AddressSpace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableIPSecReplayProtection: (() { final guardedValue = map['disableIPSecReplayProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableBgp: (() { final guardedValue = map['enableBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableBgpRouteTranslationForNat: (() { final guardedValue = map['enableBgpRouteTranslationForNat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDnsForwarding: (() { final guardedValue = map['enableDnsForwarding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateIpAddress: (() { final guardedValue = map['enablePrivateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayDefaultSite: (() { final guardedValue = map['gatewayDefaultSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gatewayType: (() { final guardedValue = map['gatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayIPConfiguration>(guardedValue, (value) => VirtualNetworkGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natRules: (() { final guardedValue = map['natRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayNatRule>(guardedValue, (value) => VirtualNetworkGatewayNatRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resiliencyModel: (() { final guardedValue = map['resiliencyModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vNetExtendedLocationResourceId: (() { final guardedValue = map['vNetExtendedLocationResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkGatewayPolicyGroups: (() { final guardedValue = map['virtualNetworkGatewayPolicyGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroup>(guardedValue, (value) => VirtualNetworkGatewayPolicyGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnClientConfiguration: (() { final guardedValue = map['vpnClientConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpnClientConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpnGatewayGeneration: (() { final guardedValue = map['vpnGatewayGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnType: (() { final guardedValue = map['vpnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


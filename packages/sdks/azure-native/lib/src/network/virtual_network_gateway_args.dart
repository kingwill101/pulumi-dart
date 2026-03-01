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
    pulumi.Output<bool>? activeActive,
    pulumi.Output<String>? adminState,
    pulumi.Output<bool>? allowRemoteVnetTraffic,
    pulumi.Output<bool>? allowVirtualWanTraffic,
    pulumi.Output<VirtualNetworkGatewayAutoScaleConfiguration>? autoScaleConfiguration,
    pulumi.Output<BgpSettings>? bgpSettings,
    pulumi.Output<AddressSpace>? customRoutes,
    pulumi.Output<bool>? disableIPSecReplayProtection,
    pulumi.Output<bool>? enableBgp,
    pulumi.Output<bool>? enableBgpRouteTranslationForNat,
    pulumi.Output<bool>? enableDnsForwarding,
    pulumi.Output<bool>? enablePrivateIpAddress,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<SubResource>? gatewayDefaultSite,
    pulumi.Output<String>? gatewayType,
    pulumi.Output<String>? id,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<List<VirtualNetworkGatewayIPConfiguration>>? ipConfigurations,
    pulumi.Output<String>? location,
    pulumi.Output<List<VirtualNetworkGatewayNatRuleNetwork>>? natRules,
    pulumi.Output<String>? resiliencyModel,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<VirtualNetworkGatewaySku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vNetExtendedLocationResourceId,
    pulumi.Output<String>? virtualNetworkGatewayName,
    pulumi.Output<List<VirtualNetworkGatewayPolicyGroup>>? virtualNetworkGatewayPolicyGroups,
    pulumi.Output<VpnClientConfiguration>? vpnClientConfiguration,
    pulumi.Output<String>? vpnGatewayGeneration,
    pulumi.Output<String>? vpnType,
  }) :
      activeActive = pulumi.Input.asOptionalInput<bool>(activeActive),
      adminState = pulumi.Input.asOptionalInput<String>(adminState),
      allowRemoteVnetTraffic = pulumi.Input.asOptionalInput<bool>(allowRemoteVnetTraffic),
      allowVirtualWanTraffic = pulumi.Input.asOptionalInput<bool>(allowVirtualWanTraffic),
      autoScaleConfiguration = pulumi.Input.asOptionalInput<VirtualNetworkGatewayAutoScaleConfiguration>(autoScaleConfiguration),
      bgpSettings = pulumi.Input.asOptionalInput<BgpSettings>(bgpSettings),
      customRoutes = pulumi.Input.asOptionalInput<AddressSpace>(customRoutes),
      disableIPSecReplayProtection = pulumi.Input.asOptionalInput<bool>(disableIPSecReplayProtection),
      enableBgp = pulumi.Input.asOptionalInput<bool>(enableBgp),
      enableBgpRouteTranslationForNat = pulumi.Input.asOptionalInput<bool>(enableBgpRouteTranslationForNat),
      enableDnsForwarding = pulumi.Input.asOptionalInput<bool>(enableDnsForwarding),
      enablePrivateIpAddress = pulumi.Input.asOptionalInput<bool>(enablePrivateIpAddress),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      gatewayDefaultSite = pulumi.Input.asOptionalInput<SubResource>(gatewayDefaultSite),
      gatewayType = pulumi.Input.asOptionalInput<String>(gatewayType),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      ipConfigurations = pulumi.Input.asOptionalInput<List<VirtualNetworkGatewayIPConfiguration>>(ipConfigurations),
      location = pulumi.Input.asOptionalInput<String>(location),
      natRules = pulumi.Input.asOptionalInput<List<VirtualNetworkGatewayNatRuleNetwork>>(natRules),
      resiliencyModel = pulumi.Input.asOptionalInput<String>(resiliencyModel),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<VirtualNetworkGatewaySku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vNetExtendedLocationResourceId = pulumi.Input.asOptionalInput<String>(vNetExtendedLocationResourceId),
      virtualNetworkGatewayName = pulumi.Input.asOptionalInput<String>(virtualNetworkGatewayName),
      virtualNetworkGatewayPolicyGroups = pulumi.Input.asOptionalInput<List<VirtualNetworkGatewayPolicyGroup>>(virtualNetworkGatewayPolicyGroups),
      vpnClientConfiguration = pulumi.Input.asOptionalInput<VpnClientConfiguration>(vpnClientConfiguration),
      vpnGatewayGeneration = pulumi.Input.asOptionalInput<String>(vpnGatewayGeneration),
      vpnType = pulumi.Input.asOptionalInput<String>(vpnType);

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
      activeActive: map['activeActive'] == null ? null : pulumi.Output.create<bool>(map['activeActive'] as bool),
      adminState: map['adminState'] == null ? null : pulumi.Output.create<String>(map['adminState'] as String),
      allowRemoteVnetTraffic: map['allowRemoteVnetTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowRemoteVnetTraffic'] as bool),
      allowVirtualWanTraffic: map['allowVirtualWanTraffic'] == null ? null : pulumi.Output.create<bool>(map['allowVirtualWanTraffic'] as bool),
      autoScaleConfiguration: map['autoScaleConfiguration'] == null ? null : pulumi.Output.create<VirtualNetworkGatewayAutoScaleConfiguration>(VirtualNetworkGatewayAutoScaleConfiguration.fromMap((map['autoScaleConfiguration'] as Map).cast<String, dynamic>())),
      bgpSettings: map['bgpSettings'] == null ? null : pulumi.Output.create<BgpSettings>(BgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>())),
      customRoutes: map['customRoutes'] == null ? null : pulumi.Output.create<AddressSpace>(AddressSpace.fromMap((map['customRoutes'] as Map).cast<String, dynamic>())),
      disableIPSecReplayProtection: map['disableIPSecReplayProtection'] == null ? null : pulumi.Output.create<bool>(map['disableIPSecReplayProtection'] as bool),
      enableBgp: map['enableBgp'] == null ? null : pulumi.Output.create<bool>(map['enableBgp'] as bool),
      enableBgpRouteTranslationForNat: map['enableBgpRouteTranslationForNat'] == null ? null : pulumi.Output.create<bool>(map['enableBgpRouteTranslationForNat'] as bool),
      enableDnsForwarding: map['enableDnsForwarding'] == null ? null : pulumi.Output.create<bool>(map['enableDnsForwarding'] as bool),
      enablePrivateIpAddress: map['enablePrivateIpAddress'] == null ? null : pulumi.Output.create<bool>(map['enablePrivateIpAddress'] as bool),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      gatewayDefaultSite: map['gatewayDefaultSite'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['gatewayDefaultSite'] as Map).cast<String, dynamic>())),
      gatewayType: map['gatewayType'] == null ? null : pulumi.Output.create<String>(map['gatewayType'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      ipConfigurations: map['ipConfigurations'] == null ? null : pulumi.Output.create<List<VirtualNetworkGatewayIPConfiguration>>(pulumi.Input.decodeList<VirtualNetworkGatewayIPConfiguration>(map['ipConfigurations'], (value) => VirtualNetworkGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      natRules: map['natRules'] == null ? null : pulumi.Output.create<List<VirtualNetworkGatewayNatRuleNetwork>>((map['natRules'] as List).cast<VirtualNetworkGatewayNatRuleNetwork>()),
      resiliencyModel: map['resiliencyModel'] == null ? null : pulumi.Output.create<String>(map['resiliencyModel'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<VirtualNetworkGatewaySku>(VirtualNetworkGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vNetExtendedLocationResourceId: map['vNetExtendedLocationResourceId'] == null ? null : pulumi.Output.create<String>(map['vNetExtendedLocationResourceId'] as String),
      virtualNetworkGatewayName: map['virtualNetworkGatewayName'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkGatewayName'] as String),
      virtualNetworkGatewayPolicyGroups: map['virtualNetworkGatewayPolicyGroups'] == null ? null : pulumi.Output.create<List<VirtualNetworkGatewayPolicyGroup>>(pulumi.Input.decodeList<VirtualNetworkGatewayPolicyGroup>(map['virtualNetworkGatewayPolicyGroups'], (value) => VirtualNetworkGatewayPolicyGroup.fromMap((value as Map).cast<String, dynamic>()))),
      vpnClientConfiguration: map['vpnClientConfiguration'] == null ? null : pulumi.Output.create<VpnClientConfiguration>(VpnClientConfiguration.fromMap((map['vpnClientConfiguration'] as Map).cast<String, dynamic>())),
      vpnGatewayGeneration: map['vpnGatewayGeneration'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayGeneration'] as String),
      vpnType: map['vpnType'] == null ? null : pulumi.Output.create<String>(map['vpnType'] as String),
    );
  }
}


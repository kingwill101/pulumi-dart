// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_v3_cluster_setting.dart';
import 'get_environment_v3_inbound_network_dependency.dart';

/// Result data returned by getEnvironmentV3.
class GetEnvironmentV3Result {
  /// Are new Private Endpoint Connections allowed.
  final bool allowNewPrivateEndpointConnections;
  /// A `cluster_setting` block as defined below.
  final List<GetEnvironmentV3ClusterSetting> clusterSettings;
  /// The number of Dedicated Hosts used by this ASEv3.
  final int dedicatedHostCount;
  /// the DNS suffix for this App Service Environment V3.
  final String dnsSuffix;
  /// The external inbound IP addresses of the App Service Environment V3.
  final List<String> externalInboundIpAddresses;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An Inbound Network Dependencies block as defined below.
  final List<GetEnvironmentV3InboundNetworkDependency> inboundNetworkDependencies;
  /// The internal inbound IP addresses of the App Service Environment V3.
  final List<String> internalInboundIpAddresses;
  /// The Internal Load Balancing Mode of this ASEv3.
  final String internalLoadBalancingMode;
  /// The number of IP SSL addresses reserved for the App Service Environment V3.
  final int ipSslAddressCount;
  /// The list of Outbound IP Addresses of Linux based Apps in this App Service Environment V3.
  final List<String> linuxOutboundIpAddresses;
  /// The location where the App Service Environment exists.
  final String location;
  /// The name of the Cluster Setting.
  final String name;
  /// Pricing tier for the front end instances.
  final String pricingTier;
  final bool remoteDebuggingEnabled;
  final String resourceGroupName;
  /// The ID of the v3 App Service Environment Subnet.
  final String subnetId;
  /// A mapping of tags assigned to the v3 App Service Environment.
  final Map<String, String> tags;
  /// Outbound addresses of Windows based Apps in this App Service Environment V3.
  final List<String> windowsOutboundIpAddresses;
  final bool zoneRedundant;

  /// Creates a new [GetEnvironmentV3Result].
  /// [allowNewPrivateEndpointConnections] Are new Private Endpoint Connections allowed.
  /// [clusterSettings] A `cluster_setting` block as defined below.
  /// [dedicatedHostCount] The number of Dedicated Hosts used by this ASEv3.
  /// [dnsSuffix] the DNS suffix for this App Service Environment V3.
  /// [externalInboundIpAddresses] The external inbound IP addresses of the App Service Environment V3.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inboundNetworkDependencies] An Inbound Network Dependencies block as defined below.
  /// [internalInboundIpAddresses] The internal inbound IP addresses of the App Service Environment V3.
  /// [internalLoadBalancingMode] The Internal Load Balancing Mode of this ASEv3.
  /// [ipSslAddressCount] The number of IP SSL addresses reserved for the App Service Environment V3.
  /// [linuxOutboundIpAddresses] The list of Outbound IP Addresses of Linux based Apps in this App Service Environment V3.
  /// [location] The location where the App Service Environment exists.
  /// [name] The name of the Cluster Setting.
  /// [pricingTier] Pricing tier for the front end instances.
  /// [remoteDebuggingEnabled] Required.
  /// [resourceGroupName] Required.
  /// [subnetId] The ID of the v3 App Service Environment Subnet.
  /// [tags] A mapping of tags assigned to the v3 App Service Environment.
  /// [windowsOutboundIpAddresses] Outbound addresses of Windows based Apps in this App Service Environment V3.
  /// [zoneRedundant] Required.
  const GetEnvironmentV3Result({
    required this.allowNewPrivateEndpointConnections,
    required this.clusterSettings,
    required this.dedicatedHostCount,
    required this.dnsSuffix,
    required this.externalInboundIpAddresses,
    required this.id,
    required this.inboundNetworkDependencies,
    required this.internalInboundIpAddresses,
    required this.internalLoadBalancingMode,
    required this.ipSslAddressCount,
    required this.linuxOutboundIpAddresses,
    required this.location,
    required this.name,
    required this.pricingTier,
    required this.remoteDebuggingEnabled,
    required this.resourceGroupName,
    required this.subnetId,
    required this.tags,
    required this.windowsOutboundIpAddresses,
    required this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewPrivateEndpointConnections': allowNewPrivateEndpointConnections,
      'clusterSettings': pulumi.Input.encodeList<GetEnvironmentV3ClusterSetting, Map<String, dynamic>>(clusterSettings, (value) => value.toMap()),
      'dedicatedHostCount': dedicatedHostCount,
      'dnsSuffix': dnsSuffix,
      'externalInboundIpAddresses': externalInboundIpAddresses,
      'id': id,
      'inboundNetworkDependencies': pulumi.Input.encodeList<GetEnvironmentV3InboundNetworkDependency, Map<String, dynamic>>(inboundNetworkDependencies, (value) => value.toMap()),
      'internalInboundIpAddresses': internalInboundIpAddresses,
      'internalLoadBalancingMode': internalLoadBalancingMode,
      'ipSslAddressCount': ipSslAddressCount,
      'linuxOutboundIpAddresses': linuxOutboundIpAddresses,
      'location': location,
      'name': name,
      'pricingTier': pricingTier,
      'remoteDebuggingEnabled': remoteDebuggingEnabled,
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'tags': tags,
      'windowsOutboundIpAddresses': windowsOutboundIpAddresses,
      'zoneRedundant': zoneRedundant,
    };
  }

  factory GetEnvironmentV3Result.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentV3Result(
      allowNewPrivateEndpointConnections: map['allowNewPrivateEndpointConnections'] as bool,
      clusterSettings: pulumi.Input.decodeList<GetEnvironmentV3ClusterSetting>(map['clusterSettings']!, (value) => GetEnvironmentV3ClusterSetting.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedHostCount: map['dedicatedHostCount'] as int,
      dnsSuffix: map['dnsSuffix'] as String,
      externalInboundIpAddresses: (map['externalInboundIpAddresses'] as List).cast<String>(),
      id: map['id'] as String,
      inboundNetworkDependencies: pulumi.Input.decodeList<GetEnvironmentV3InboundNetworkDependency>(map['inboundNetworkDependencies']!, (value) => GetEnvironmentV3InboundNetworkDependency.fromMap((value as Map).cast<String, dynamic>())),
      internalInboundIpAddresses: (map['internalInboundIpAddresses'] as List).cast<String>(),
      internalLoadBalancingMode: map['internalLoadBalancingMode'] as String,
      ipSslAddressCount: map['ipSslAddressCount'] as int,
      linuxOutboundIpAddresses: (map['linuxOutboundIpAddresses'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      pricingTier: map['pricingTier'] as String,
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      windowsOutboundIpAddresses: (map['windowsOutboundIpAddresses'] as List).cast<String>(),
      zoneRedundant: map['zoneRedundant'] as bool,
    );
  }
}


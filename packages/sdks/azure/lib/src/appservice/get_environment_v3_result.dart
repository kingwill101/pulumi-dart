// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_v3_cluster_setting.dart';
import 'get_environment_v3_inbound_network_dependency.dart';

/// Result data returned by getEnvironmentV3.
class GetEnvironmentV3Result {
  /// Are new Private Endpoint Connections allowed.
  final bool? allowNewPrivateEndpointConnections;
  /// A `clusterSetting` block as defined below.
  final List<GetEnvironmentV3ClusterSetting>? clusterSettings;
  /// The number of Dedicated Hosts used by this ASEv3.
  final int? dedicatedHostCount;
  /// the DNS suffix for this App Service Environment V3.
  final String? dnsSuffix;
  /// The external inbound IP addresses of the App Service Environment V3.
  final List<String>? externalInboundIpAddresses;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An Inbound Network Dependencies block as defined below.
  final List<GetEnvironmentV3InboundNetworkDependency>? inboundNetworkDependencies;
  /// The internal inbound IP addresses of the App Service Environment V3.
  final List<String>? internalInboundIpAddresses;
  /// The Internal Load Balancing Mode of this ASEv3.
  final String? internalLoadBalancingMode;
  /// The number of IP SSL addresses reserved for the App Service Environment V3.
  final int? ipSslAddressCount;
  /// The list of Outbound IP Addresses of Linux based Apps in this App Service Environment V3.
  final List<String>? linuxOutboundIpAddresses;
  /// The location where the App Service Environment exists.
  final String? location;
  /// The name of the Cluster Setting.
  final String? name;
  /// Pricing tier for the front end instances.
  final String? pricingTier;
  final bool? remoteDebuggingEnabled;
  final String? resourceGroupName;
  /// The ID of the v3 App Service Environment Subnet.
  final String? subnetId;
  /// A mapping of tags assigned to the v3 App Service Environment.
  final Map<String, String>? tags;
  /// Outbound addresses of Windows based Apps in this App Service Environment V3.
  final List<String>? windowsOutboundIpAddresses;
  final bool? zoneRedundant;

  /// Creates a new [GetEnvironmentV3Result].
  /// [allowNewPrivateEndpointConnections] Are new Private Endpoint Connections allowed.
  /// [clusterSettings] A `clusterSetting` block as defined below.
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
  /// [remoteDebuggingEnabled] Optional.
  /// [resourceGroupName] Optional.
  /// [subnetId] The ID of the v3 App Service Environment Subnet.
  /// [tags] A mapping of tags assigned to the v3 App Service Environment.
  /// [windowsOutboundIpAddresses] Outbound addresses of Windows based Apps in this App Service Environment V3.
  /// [zoneRedundant] Optional.
  const GetEnvironmentV3Result({
    this.allowNewPrivateEndpointConnections,
    this.clusterSettings,
    this.dedicatedHostCount,
    this.dnsSuffix,
    this.externalInboundIpAddresses,
    this.id,
    this.inboundNetworkDependencies,
    this.internalInboundIpAddresses,
    this.internalLoadBalancingMode,
    this.ipSslAddressCount,
    this.linuxOutboundIpAddresses,
    this.location,
    this.name,
    this.pricingTier,
    this.remoteDebuggingEnabled,
    this.resourceGroupName,
    this.subnetId,
    this.tags,
    this.windowsOutboundIpAddresses,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewPrivateEndpointConnections': ?allowNewPrivateEndpointConnections,
      'clusterSettings': ?(() { final guardedValue = clusterSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEnvironmentV3ClusterSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dedicatedHostCount': ?dedicatedHostCount,
      'dnsSuffix': ?dnsSuffix,
      'externalInboundIpAddresses': ?externalInboundIpAddresses,
      'id': ?id,
      'inboundNetworkDependencies': ?(() { final guardedValue = inboundNetworkDependencies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEnvironmentV3InboundNetworkDependency, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'internalInboundIpAddresses': ?internalInboundIpAddresses,
      'internalLoadBalancingMode': ?internalLoadBalancingMode,
      'ipSslAddressCount': ?ipSslAddressCount,
      'linuxOutboundIpAddresses': ?linuxOutboundIpAddresses,
      'location': ?location,
      'name': ?name,
      'pricingTier': ?pricingTier,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'resourceGroupName': ?resourceGroupName,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'windowsOutboundIpAddresses': ?windowsOutboundIpAddresses,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetEnvironmentV3Result.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentV3Result(
      allowNewPrivateEndpointConnections: (() { final guardedValue = map['allowNewPrivateEndpointConnections']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterSettings: (() { final guardedValue = map['clusterSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEnvironmentV3ClusterSetting>(guardedValue, (value) => GetEnvironmentV3ClusterSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      dedicatedHostCount: (() { final guardedValue = map['dedicatedHostCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalInboundIpAddresses: (() { final guardedValue = map['externalInboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundNetworkDependencies: (() { final guardedValue = map['inboundNetworkDependencies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEnvironmentV3InboundNetworkDependency>(guardedValue, (value) => GetEnvironmentV3InboundNetworkDependency.fromMap((value as Map).cast<String, dynamic>())); })(),
      internalInboundIpAddresses: (() { final guardedValue = map['internalInboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      internalLoadBalancingMode: (() { final guardedValue = map['internalLoadBalancingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipSslAddressCount: (() { final guardedValue = map['ipSslAddressCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      linuxOutboundIpAddresses: (() { final guardedValue = map['linuxOutboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pricingTier: (() { final guardedValue = map['pricingTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteDebuggingEnabled: (() { final guardedValue = map['remoteDebuggingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      windowsOutboundIpAddresses: (() { final guardedValue = map['windowsOutboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_v3_cluster_setting.dart';
import 'environment_v3_inbound_network_dependency.dart';

/// Input properties used for looking up and filtering EnvironmentV3 resources.
class EnvironmentV3State {
  /// Should new Private Endpoint Connections be allowed. Defaults to `true`.
  final pulumi.Input<bool>? allowNewPrivateEndpointConnections;
  /// Zero or more `cluster_setting` blocks as defined below.
  final pulumi.Input<List<EnvironmentV3ClusterSetting>>? clusterSettings;
  /// This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? dedicatedHostCount;
  /// the DNS suffix for this App Service Environment V3.
  final pulumi.Input<String>? dnsSuffix;
  /// The external inbound IP addresses of the App Service Environment V3.
  final pulumi.Input<List<String>>? externalInboundIpAddresses;
  /// An `inbound_network_dependencies` block as defined below.
  final pulumi.Input<List<EnvironmentV3InboundNetworkDependency>>? inboundNetworkDependencies;
  /// The internal inbound IP addresses of the App Service Environment V3.
  final pulumi.Input<List<String>>? internalInboundIpAddresses;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? internalLoadBalancingMode;
  /// The number of IP SSL addresses reserved for the App Service Environment V3.
  final pulumi.Input<int>? ipSslAddressCount;
  /// Outbound addresses of Linux based Apps in this App Service Environment V3
  final pulumi.Input<List<String>>? linuxOutboundIpAddresses;
  /// The location where the App Service Environment exists.
  final pulumi.Input<String>? location;
  /// The name of the App Service Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Pricing tier for the front end instances.
  final pulumi.Input<String>? pricingTier;
  /// Whether to enable remote debug. Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** a /24 or larger CIDR is required. Once associated with an ASE, this size cannot be changed.
  ///
  /// > **Note:** This Subnet requires a delegation to `Microsoft.Web/hostingEnvironments` as detailed in the example above.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** The underlying API does not currently support changing Tags on this resource. Making changes in the portal for tags will cause Terraform to detect a change that will force a recreation of the ASEV3 unless `ignore_changes` lifecycle meta-argument is used.
  final pulumi.Input<Map<String, String>>? tags;
  /// Outbound addresses of Windows based Apps in this App Service Environment V3.
  final pulumi.Input<List<String>>? windowsOutboundIpAddresses;
  /// Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Setting this value will provision 2 Physical Hosts for your App Service Environment V3, this is done at additional cost, please be aware of the pricing commitment in the [General Availability Notes](https://techcommunity.microsoft.com/t5/apps-on-azure/announcing-app-service-environment-v3-ga/ba-p/2517990)
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [EnvironmentV3State].
  /// [allowNewPrivateEndpointConnections] Should new Private Endpoint Connections be allowed. Defaults to `true`.
  /// [clusterSettings] Zero or more `cluster_setting` blocks as defined below.
  /// [dedicatedHostCount] This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  /// [dnsSuffix] the DNS suffix for this App Service Environment V3.
  /// [externalInboundIpAddresses] The external inbound IP addresses of the App Service Environment V3.
  /// [inboundNetworkDependencies] An `inbound_network_dependencies` block as defined below.
  /// [internalInboundIpAddresses] The internal inbound IP addresses of the App Service Environment V3.
  /// [internalLoadBalancingMode] Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  /// [ipSslAddressCount] The number of IP SSL addresses reserved for the App Service Environment V3.
  /// [linuxOutboundIpAddresses] Outbound addresses of Linux based Apps in this App Service Environment V3
  /// [location] The location where the App Service Environment exists.
  /// [name] The name of the App Service Environment. Changing this forces a new resource to be created.
  /// [pricingTier] Pricing tier for the front end instances.
  /// [remoteDebuggingEnabled] Whether to enable remote debug. Defaults to `false`.
  /// [resourceGroupName] The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [windowsOutboundIpAddresses] Outbound addresses of Windows based Apps in this App Service Environment V3.
  /// [zoneRedundant] Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created.
  EnvironmentV3State({
    pulumi.Output<bool>? allowNewPrivateEndpointConnections,
    pulumi.Output<List<EnvironmentV3ClusterSetting>>? clusterSettings,
    pulumi.Output<int>? dedicatedHostCount,
    pulumi.Output<String>? dnsSuffix,
    pulumi.Output<List<String>>? externalInboundIpAddresses,
    pulumi.Output<List<EnvironmentV3InboundNetworkDependency>>? inboundNetworkDependencies,
    pulumi.Output<List<String>>? internalInboundIpAddresses,
    pulumi.Output<String>? internalLoadBalancingMode,
    pulumi.Output<int>? ipSslAddressCount,
    pulumi.Output<List<String>>? linuxOutboundIpAddresses,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? pricingTier,
    pulumi.Output<bool>? remoteDebuggingEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? windowsOutboundIpAddresses,
    pulumi.Output<bool>? zoneRedundant,
  }) :
      allowNewPrivateEndpointConnections = pulumi.Input.asOptionalInput<bool>(allowNewPrivateEndpointConnections),
      clusterSettings = pulumi.Input.asOptionalInput<List<EnvironmentV3ClusterSetting>>(clusterSettings),
      dedicatedHostCount = pulumi.Input.asOptionalInput<int>(dedicatedHostCount),
      dnsSuffix = pulumi.Input.asOptionalInput<String>(dnsSuffix),
      externalInboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(externalInboundIpAddresses),
      inboundNetworkDependencies = pulumi.Input.asOptionalInput<List<EnvironmentV3InboundNetworkDependency>>(inboundNetworkDependencies),
      internalInboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(internalInboundIpAddresses),
      internalLoadBalancingMode = pulumi.Input.asOptionalInput<String>(internalLoadBalancingMode),
      ipSslAddressCount = pulumi.Input.asOptionalInput<int>(ipSslAddressCount),
      linuxOutboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(linuxOutboundIpAddresses),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      pricingTier = pulumi.Input.asOptionalInput<String>(pricingTier),
      remoteDebuggingEnabled = pulumi.Input.asOptionalInput<bool>(remoteDebuggingEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      windowsOutboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(windowsOutboundIpAddresses),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewPrivateEndpointConnections': ?allowNewPrivateEndpointConnections,
      'clusterSettings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentV3ClusterSetting>, List<Map<String, dynamic>>>(clusterSettings, (value) => pulumi.Input.encodeList<EnvironmentV3ClusterSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedHostCount': ?dedicatedHostCount,
      'dnsSuffix': ?dnsSuffix,
      'externalInboundIpAddresses': ?externalInboundIpAddresses,
      'inboundNetworkDependencies': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentV3InboundNetworkDependency>, List<Map<String, dynamic>>>(inboundNetworkDependencies, (value) => pulumi.Input.encodeList<EnvironmentV3InboundNetworkDependency, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory EnvironmentV3State.fromMap(Map<String, dynamic> map) {
    return EnvironmentV3State(
      allowNewPrivateEndpointConnections: map['allowNewPrivateEndpointConnections'] == null ? null : pulumi.Output.create<bool>(map['allowNewPrivateEndpointConnections'] as bool),
      clusterSettings: map['clusterSettings'] == null ? null : pulumi.Output.create<List<EnvironmentV3ClusterSetting>>(pulumi.Input.decodeList<EnvironmentV3ClusterSetting>(map['clusterSettings'], (value) => EnvironmentV3ClusterSetting.fromMap((value as Map).cast<String, dynamic>()))),
      dedicatedHostCount: map['dedicatedHostCount'] == null ? null : pulumi.Output.create<int>(map['dedicatedHostCount'] as int),
      dnsSuffix: map['dnsSuffix'] == null ? null : pulumi.Output.create<String>(map['dnsSuffix'] as String),
      externalInboundIpAddresses: map['externalInboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['externalInboundIpAddresses'] as List).cast<String>()),
      inboundNetworkDependencies: map['inboundNetworkDependencies'] == null ? null : pulumi.Output.create<List<EnvironmentV3InboundNetworkDependency>>(pulumi.Input.decodeList<EnvironmentV3InboundNetworkDependency>(map['inboundNetworkDependencies'], (value) => EnvironmentV3InboundNetworkDependency.fromMap((value as Map).cast<String, dynamic>()))),
      internalInboundIpAddresses: map['internalInboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['internalInboundIpAddresses'] as List).cast<String>()),
      internalLoadBalancingMode: map['internalLoadBalancingMode'] == null ? null : pulumi.Output.create<String>(map['internalLoadBalancingMode'] as String),
      ipSslAddressCount: map['ipSslAddressCount'] == null ? null : pulumi.Output.create<int>(map['ipSslAddressCount'] as int),
      linuxOutboundIpAddresses: map['linuxOutboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['linuxOutboundIpAddresses'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      pricingTier: map['pricingTier'] == null ? null : pulumi.Output.create<String>(map['pricingTier'] as String),
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : pulumi.Output.create<bool>(map['remoteDebuggingEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      windowsOutboundIpAddresses: map['windowsOutboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['windowsOutboundIpAddresses'] as List).cast<String>()),
      zoneRedundant: map['zoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundant'] as bool),
    );
  }
}


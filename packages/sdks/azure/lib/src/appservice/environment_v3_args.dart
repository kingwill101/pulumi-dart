// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_v3_cluster_setting.dart';

/// {@template pulumi_appservice_environment_v3_environment_v3_args_doc}
/// The set of arguments for EnvironmentV3.
/// {@endtemplate}
/// {@macro pulumi_appservice_environment_v3_environment_v3_args_doc}
class EnvironmentV3Args {
  /// Should new Private Endpoint Connections be allowed. Defaults to `true`.
  final pulumi.Input<bool>? allowNewPrivateEndpointConnections;
  /// Zero or more `cluster_setting` blocks as defined below.
  final pulumi.Input<List<EnvironmentV3ClusterSetting>>? clusterSettings;
  /// This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? dedicatedHostCount;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? internalLoadBalancingMode;
  /// The name of the App Service Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether to enable remote debug. Defaults to `false`.
  final pulumi.Input<bool>? remoteDebuggingEnabled;
  /// The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** a /24 or larger CIDR is required. Once associated with an ASE, this size cannot be changed.
  ///
  /// > **Note:** This Subnet requires a delegation to `Microsoft.Web/hostingEnvironments` as detailed in the example above.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// > **Note:** The underlying API does not currently support changing Tags on this resource. Making changes in the portal for tags will cause Terraform to detect a change that will force a recreation of the ASEV3 unless `ignore_changes` lifecycle meta-argument is used.
  final pulumi.Input<Map<String, String>>? tags;
  /// Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Setting this value will provision 2 Physical Hosts for your App Service Environment V3, this is done at additional cost, please be aware of the pricing commitment in the [General Availability Notes](https://techcommunity.microsoft.com/t5/apps-on-azure/announcing-app-service-environment-v3-ga/ba-p/2517990)
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [EnvironmentV3Args].
  /// [allowNewPrivateEndpointConnections] Should new Private Endpoint Connections be allowed. Defaults to `true`.
  /// [clusterSettings] Zero or more `cluster_setting` blocks as defined below.
  /// [dedicatedHostCount] This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  /// [internalLoadBalancingMode] Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  /// [name] The name of the App Service Environment. Changing this forces a new resource to be created.
  /// [remoteDebuggingEnabled] Whether to enable remote debug. Defaults to `false`.
  /// [resourceGroupName] The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnet_id`). Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicated_host_count` or `zone_redundant` but not both. Changing this forces a new resource to be created.
  EnvironmentV3Args({
    this.allowNewPrivateEndpointConnections,
    this.clusterSettings,
    this.dedicatedHostCount,
    this.internalLoadBalancingMode,
    this.name,
    this.remoteDebuggingEnabled,
    required this.resourceGroupName,
    required this.subnetId,
    this.tags,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNewPrivateEndpointConnections': ?allowNewPrivateEndpointConnections,
      'clusterSettings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentV3ClusterSetting>, List<Map<String, dynamic>>>(clusterSettings, (value) => pulumi.Input.encodeList<EnvironmentV3ClusterSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dedicatedHostCount': ?dedicatedHostCount,
      'internalLoadBalancingMode': ?internalLoadBalancingMode,
      'name': ?name,
      'remoteDebuggingEnabled': ?remoteDebuggingEnabled,
      'resourceGroupName': resourceGroupName,
      'subnetId': subnetId,
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory EnvironmentV3Args.fromMap(Map<String, dynamic> map) {
    return EnvironmentV3Args(
      allowNewPrivateEndpointConnections: map['allowNewPrivateEndpointConnections'] == null ? null : (map['allowNewPrivateEndpointConnections'] as bool).input(),
      clusterSettings: map['clusterSettings'] == null ? null : (pulumi.Input.decodeList<EnvironmentV3ClusterSetting>(map['clusterSettings'], (value) => EnvironmentV3ClusterSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dedicatedHostCount: map['dedicatedHostCount'] == null ? null : (map['dedicatedHostCount'] as int).input(),
      internalLoadBalancingMode: map['internalLoadBalancingMode'] == null ? null : (map['internalLoadBalancingMode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      remoteDebuggingEnabled: map['remoteDebuggingEnabled'] == null ? null : (map['remoteDebuggingEnabled'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}


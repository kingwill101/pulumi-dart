// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_v3_cluster_setting.dart';

/// {@template pulumi_appservice_environment_v3_environment_v3_args_doc}
/// The set of arguments for EnvironmentV3.
/// {@endtemplate}
/// {@macro pulumi_appservice_environment_v3_environment_v3_args_doc}
class EnvironmentV3Args {
  /// Should new Private Endpoint Connections be allowed. Defaults to `true`.
  final pulumi.Input<bool?>? allowNewPrivateEndpointConnections;
  /// Zero or more `clusterSetting` blocks as defined below.
  final pulumi.Input<List<EnvironmentV3ClusterSetting>?>? clusterSettings;
  /// This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? dedicatedHostCount;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? internalLoadBalancingMode;
  /// The name of the App Service Environment. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Whether to enable remote debug. Defaults to `false`.
  final pulumi.Input<bool?>? remoteDebuggingEnabled;
  /// The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnetId`). Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** a /24 or larger CIDR is required. Once associated with an ASE, this size cannot be changed.
  ///
  /// &gt; **Note:** This Subnet requires a delegation to `Microsoft.Web/hostingEnvironments` as detailed in the example above.
  final pulumi.Input<String> subnetId;
  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; **Note:** The underlying API does not currently support changing Tags on this resource. Making changes in the portal for tags will cause Terraform to detect a change that will force a recreation of the ASEV3 unless `ignoreChanges` lifecycle meta-argument is used.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicatedHostCount` or `zoneRedundant` but not both. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Setting this value will provision 2 Physical Hosts for your App Service Environment V3, this is done at additional cost, please be aware of the pricing commitment in the [General Availability Notes](https://techcommunity.microsoft.com/t5/apps-on-azure/announcing-app-service-environment-v3-ga/ba-p/2517990)
  final pulumi.Input<bool?>? zoneRedundant;

  /// Creates a new [EnvironmentV3Args].
  /// [allowNewPrivateEndpointConnections] Should new Private Endpoint Connections be allowed. Defaults to `true`.
  /// [clusterSettings] Zero or more `clusterSetting` blocks as defined below.
  /// [dedicatedHostCount] This ASEv3 should use dedicated Hosts. Possible values are `2`. Changing this forces a new resource to be created.
  /// [internalLoadBalancingMode] Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. Possible values are `None` (for an External VIP Type), and `"Web, Publishing"` (for an Internal VIP Type). Defaults to `None`. Changing this forces a new resource to be created.
  /// [name] The name of the App Service Environment. Changing this forces a new resource to be created.
  /// [remoteDebuggingEnabled] Whether to enable remote debug. Defaults to `false`.
  /// [resourceGroupName] The name of the Resource Group where the App Service Environment exists. Defaults to the Resource Group of the Subnet (specified by `subnetId`). Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet which the App Service Environment should be connected to. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Set to `true` to deploy the ASEv3 with availability zones supported. Zonal ASEs can be deployed in some regions, you can refer to [Availability Zone support for App Service Environments](https://docs.microsoft.com/azure/app-service/environment/zone-redundancy). You can only set either `dedicatedHostCount` or `zoneRedundant` but not both. Changing this forces a new resource to be created.
  const EnvironmentV3Args({
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
      allowNewPrivateEndpointConnections: (() { final guardedValue = map['allowNewPrivateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterSettings: (() { final guardedValue = map['clusterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentV3ClusterSetting>(guardedValue, (value) => EnvironmentV3ClusterSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dedicatedHostCount: (() { final guardedValue = map['dedicatedHostCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      internalLoadBalancingMode: (() { final guardedValue = map['internalLoadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDebuggingEnabled: (() { final guardedValue = map['remoteDebuggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

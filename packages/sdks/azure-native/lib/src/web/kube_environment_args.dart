// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_logs_configuration.dart';
import 'arc_configuration.dart';
import 'container_apps_configuration.dart';
import 'extended_location.dart';

/// {@template pulumi_web_kube_environment_args_doc}
/// The set of arguments for KubeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_web_kube_environment_args_doc}
class KubeEnvironmentArgs {
  final pulumi.Input<String>? aksResourceID;
  /// Cluster configuration which enables the log daemon to export
  /// app logs to a destination. Currently only "log-analytics" is
  /// supported
  final pulumi.Input<AppLogsConfiguration>? appLogsConfiguration;
  /// Cluster configuration which determines the ARC cluster
  /// components types. Eg: Choosing between BuildService kind,
  /// FrontEnd Service ArtifactsStorageType etc.
  final pulumi.Input<ArcConfiguration>? arcConfiguration;
  /// Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  final pulumi.Input<ContainerAppsConfiguration>? containerAppsConfiguration;
  /// Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  final pulumi.Input<String>? environmentType;
  /// Extended Location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Only visible within Vnet/Subnet
  final pulumi.Input<bool>? internalLoadBalancerEnabled;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Name of the Kubernetes Environment.
  final pulumi.Input<String>? name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Static IP of the KubeEnvironment
  final pulumi.Input<String>? staticIp;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KubeEnvironmentArgs].
  /// [aksResourceID] Optional.
  /// [appLogsConfiguration] Cluster configuration which enables the log daemon to export
  /// [arcConfiguration] Cluster configuration which determines the ARC cluster
  /// [containerAppsConfiguration] Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  /// [environmentType] Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  /// [extendedLocation] Extended Location.
  /// [internalLoadBalancerEnabled] Only visible within Vnet/Subnet
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Name of the Kubernetes Environment.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [staticIp] Static IP of the KubeEnvironment
  /// [tags] Resource tags.
  KubeEnvironmentArgs({
    this.aksResourceID,
    this.appLogsConfiguration,
    this.arcConfiguration,
    this.containerAppsConfiguration,
    this.environmentType,
    this.extendedLocation,
    this.internalLoadBalancerEnabled,
    this.kind,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.staticIp,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aksResourceID': ?aksResourceID,
      'appLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<AppLogsConfiguration, Map<String, dynamic>>(appLogsConfiguration, (value) => value.toMap()),
      'arcConfiguration': ?pulumi.Input.mapOptionalInputValue<ArcConfiguration, Map<String, dynamic>>(arcConfiguration, (value) => value.toMap()),
      'containerAppsConfiguration': ?pulumi.Input.mapOptionalInputValue<ContainerAppsConfiguration, Map<String, dynamic>>(containerAppsConfiguration, (value) => value.toMap()),
      'environmentType': ?environmentType,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'internalLoadBalancerEnabled': ?internalLoadBalancerEnabled,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'staticIp': ?staticIp,
      'tags': ?tags,
    };
  }

  factory KubeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return KubeEnvironmentArgs(
      aksResourceID: map['aksResourceID'] == null ? null : (map['aksResourceID'] as String).input(),
      appLogsConfiguration: map['appLogsConfiguration'] == null ? null : (AppLogsConfiguration.fromMap((map['appLogsConfiguration'] as Map).cast<String, dynamic>())).input(),
      arcConfiguration: map['arcConfiguration'] == null ? null : (ArcConfiguration.fromMap((map['arcConfiguration'] as Map).cast<String, dynamic>())).input(),
      containerAppsConfiguration: map['containerAppsConfiguration'] == null ? null : (ContainerAppsConfiguration.fromMap((map['containerAppsConfiguration'] as Map).cast<String, dynamic>())).input(),
      environmentType: map['environmentType'] == null ? null : (map['environmentType'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      internalLoadBalancerEnabled: map['internalLoadBalancerEnabled'] == null ? null : (map['internalLoadBalancerEnabled'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      staticIp: map['staticIp'] == null ? null : (map['staticIp'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


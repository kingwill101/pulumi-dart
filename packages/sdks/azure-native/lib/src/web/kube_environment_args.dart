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
  final pulumi.Input<String?>? aksResourceID;
  /// Cluster configuration which enables the log daemon to export
  /// app logs to a destination. Currently only "log-analytics" is
  /// supported
  final pulumi.Input<AppLogsConfiguration?>? appLogsConfiguration;
  /// Cluster configuration which determines the ARC cluster
  /// components types. Eg: Choosing between BuildService kind,
  /// FrontEnd Service ArtifactsStorageType etc.
  final pulumi.Input<ArcConfiguration?>? arcConfiguration;
  /// Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  final pulumi.Input<ContainerAppsConfiguration?>? containerAppsConfiguration;
  /// Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  final pulumi.Input<String?>? environmentType;
  /// Extended Location.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// Only visible within Vnet/Subnet
  final pulumi.Input<bool?>? internalLoadBalancerEnabled;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Name of the Kubernetes Environment.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Static IP of the KubeEnvironment
  final pulumi.Input<String?>? staticIp;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [KubeEnvironmentArgs].
  /// [aksResourceID] Optional.
  /// [appLogsConfiguration] Cluster configuration which enables the log daemon to export
  /// [arcConfiguration] Cluster configuration which determines the ARC cluster
  /// [containerAppsConfiguration] Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  /// [environmentType] Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  /// [extendedLocation] Extended Location.
  /// [internalLoadBalancerEnabled] Only visible within Vnet/Subnet
  /// [kind] Kind of resource.
  /// [location] The geo-location where the resource lives
  /// [name] Name of the Kubernetes Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [staticIp] Static IP of the KubeEnvironment
  /// [tags] Resource tags.
  const KubeEnvironmentArgs({
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
      aksResourceID: (() { final guardedValue = map['aksResourceID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appLogsConfiguration: (() { final guardedValue = map['appLogsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppLogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arcConfiguration: (() { final guardedValue = map['arcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerAppsConfiguration: (() { final guardedValue = map['containerAppsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerAppsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentType: (() { final guardedValue = map['environmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internalLoadBalancerEnabled: (() { final guardedValue = map['internalLoadBalancerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      staticIp: (() { final guardedValue = map['staticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

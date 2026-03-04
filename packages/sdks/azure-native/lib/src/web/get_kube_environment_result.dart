// ignore_for_file: unused_element, unnecessary_cast

import 'app_logs_configuration_response.dart';
import 'arc_configuration_response.dart';
import 'container_apps_configuration_response.dart';
import 'extended_location_response.dart';

/// Result data returned by getKubeEnvironment.
class GetKubeEnvironmentResult {
  final String? aksResourceID;

  /// Cluster configuration which enables the log daemon to export
  /// app logs to a destination. Currently only "log-analytics" is
  /// supported
  final AppLogsConfigurationResponse? appLogsConfiguration;

  /// Cluster configuration which determines the ARC cluster
  /// components types. Eg: Choosing between BuildService kind,
  /// FrontEnd Service ArtifactsStorageType etc.
  final ArcConfigurationResponse? arcConfiguration;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  final ContainerAppsConfigurationResponse? containerAppsConfiguration;

  /// Default Domain Name for the cluster
  final String defaultDomain;

  /// Any errors that occurred during deployment or deployment validation
  final String deploymentErrors;

  /// Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  final String? environmentType;

  /// Extended Location.
  final ExtendedLocationResponse? extendedLocation;

  /// Resource Id.
  final String id;

  /// Only visible within Vnet/Subnet
  final bool? internalLoadBalancerEnabled;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;

  /// Resource Location.
  final String location;

  /// Resource Name.
  final String name;

  /// Provisioning state of the Kubernetes Environment.
  final String provisioningState;

  /// Static IP of the KubeEnvironment
  final String? staticIp;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Resource type.
  final String type;

  /// Creates a new [GetKubeEnvironmentResult].
  /// [aksResourceID] Optional.
  /// [appLogsConfiguration] Cluster configuration which enables the log daemon to export
  /// [arcConfiguration] Cluster configuration which determines the ARC cluster
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containerAppsConfiguration] Cluster configuration for Container Apps Environments to configure Dapr Instrumentation Key and VNET Configuration
  /// [defaultDomain] Default Domain Name for the cluster
  /// [deploymentErrors] Any errors that occurred during deployment or deployment validation
  /// [environmentType] Type of Kubernetes Environment. Only supported for Container App Environments with value as Managed
  /// [extendedLocation] Extended Location.
  /// [id] Resource Id.
  /// [internalLoadBalancerEnabled] Only visible within Vnet/Subnet
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [name] Resource Name.
  /// [provisioningState] Provisioning state of the Kubernetes Environment.
  /// [staticIp] Static IP of the KubeEnvironment
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetKubeEnvironmentResult({
    this.aksResourceID,
    this.appLogsConfiguration,
    this.arcConfiguration,
    required this.azureApiVersion,
    this.containerAppsConfiguration,
    required this.defaultDomain,
    required this.deploymentErrors,
    this.environmentType,
    this.extendedLocation,
    required this.id,
    this.internalLoadBalancerEnabled,
    this.kind,
    required this.location,
    required this.name,
    required this.provisioningState,
    this.staticIp,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aksResourceID': ?aksResourceID,
      'appLogsConfiguration': ?appLogsConfiguration?.toMap(),
      'arcConfiguration': ?arcConfiguration?.toMap(),
      'azureApiVersion': azureApiVersion,
      'containerAppsConfiguration': ?containerAppsConfiguration?.toMap(),
      'defaultDomain': defaultDomain,
      'deploymentErrors': deploymentErrors,
      'environmentType': ?environmentType,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'internalLoadBalancerEnabled': ?internalLoadBalancerEnabled,
      'kind': ?kind,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'staticIp': ?staticIp,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetKubeEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetKubeEnvironmentResult(
      aksResourceID: (() {
        final guardedValue = map['aksResourceID'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      appLogsConfiguration: (() {
        final guardedValue = map['appLogsConfiguration'];
        if (guardedValue == null) return null;
        return AppLogsConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      arcConfiguration: (() {
        final guardedValue = map['arcConfiguration'];
        if (guardedValue == null) return null;
        return ArcConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      containerAppsConfiguration: (() {
        final guardedValue = map['containerAppsConfiguration'];
        if (guardedValue == null) return null;
        return ContainerAppsConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      defaultDomain: map['defaultDomain'] as String,
      deploymentErrors: map['deploymentErrors'] as String,
      environmentType: (() {
        final guardedValue = map['environmentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      internalLoadBalancerEnabled: (() {
        final guardedValue = map['internalLoadBalancerEnabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      staticIp: (() {
        final guardedValue = map['staticIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}

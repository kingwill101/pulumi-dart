// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_managed_cluster_service_args_doc}
/// The set of arguments for ManagedClusterService.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_service_args_doc}
class ManagedClusterServiceArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Resource location depends on the parent resource.
  final pulumi.Input<String?>? location;
  /// The service resource properties.
  final pulumi.Input<dynamic>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the service resource in the format of {applicationName}~{serviceName}.
  final pulumi.Input<String?>? serviceName;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ManagedClusterServiceArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] Resource location depends on the parent resource.
  /// [properties] The service resource properties.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the service resource in the format of {applicationName}~{serviceName}.
  /// [tags] Azure resource tags.
  const ManagedClusterServiceArgs({
    required this.applicationName,
    required this.clusterName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.serviceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'location': ?location,
      'properties': ?properties,
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
      'tags': ?tags,
    };
  }

  factory ManagedClusterServiceArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterServiceArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

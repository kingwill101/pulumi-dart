// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_service_args_doc}
/// Arguments for getManagedClusterService.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_service_args_doc}
class GetManagedClusterServiceArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;

  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the service resource in the format of {applicationName}~{serviceName}.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetManagedClusterServiceArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the service resource in the format of {applicationName}~{serviceName}.
  GetManagedClusterServiceArgs({
    required this.applicationName,
    required this.clusterName,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetManagedClusterServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterServiceArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

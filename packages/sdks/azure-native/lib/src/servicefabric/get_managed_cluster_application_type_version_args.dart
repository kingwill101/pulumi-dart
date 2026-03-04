// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_application_type_version_args_doc}
/// Arguments for getManagedClusterApplicationTypeVersion.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_application_type_version_args_doc}
class GetManagedClusterApplicationTypeVersionArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;

  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The application type version.
  final pulumi.Input<String> version;

  /// Creates a new [GetManagedClusterApplicationTypeVersionArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  /// [version] The application type version.
  GetManagedClusterApplicationTypeVersionArgs({
    required this.applicationTypeName,
    required this.clusterName,
    required this.resourceGroupName,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
      'version': version,
    };
  }

  factory GetManagedClusterApplicationTypeVersionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedClusterApplicationTypeVersionArgs(
      applicationTypeName: pulumi.Input.fromValue(
        map['applicationTypeName'] as String,
      ),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

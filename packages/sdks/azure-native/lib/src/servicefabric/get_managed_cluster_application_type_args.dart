// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_get_managed_cluster_application_type_args_doc}
/// Arguments for getManagedClusterApplicationType.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_get_managed_cluster_application_type_args_doc}
class GetManagedClusterApplicationTypeArgs {
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedClusterApplicationTypeArgs].
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group.
  GetManagedClusterApplicationTypeArgs({
    required this.applicationTypeName,
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedClusterApplicationTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterApplicationTypeArgs(
      applicationTypeName: (map['applicationTypeName'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


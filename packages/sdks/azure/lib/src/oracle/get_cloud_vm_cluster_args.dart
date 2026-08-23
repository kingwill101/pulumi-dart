// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// Arguments for getCloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
class GetCloudVmClusterArgs {
  /// The name of this Cloud VM Cluster.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Cloud VM Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCloudVmClusterArgs].
  /// [name] The name of this Cloud VM Cluster.
  /// [resourceGroupName] The name of the Resource Group where the Cloud VM Cluster exists.
  const GetCloudVmClusterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

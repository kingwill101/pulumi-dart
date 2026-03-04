// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_virtual_cluster_args_doc}
/// Arguments for getVirtualCluster.
/// {@endtemplate}
/// {@macro pulumi_sql_get_virtual_cluster_args_doc}
class GetVirtualClusterArgs {
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the virtual cluster.
  final pulumi.Input<String> virtualClusterName;

  /// Creates a new [GetVirtualClusterArgs].
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [virtualClusterName] The name of the virtual cluster.
  GetVirtualClusterArgs({
    required this.resourceGroupName,
    required this.virtualClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualClusterName': virtualClusterName,
    };
  }

  factory GetVirtualClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualClusterName: pulumi.Input.fromValue(
        map['virtualClusterName'] as String,
      ),
    );
  }
}

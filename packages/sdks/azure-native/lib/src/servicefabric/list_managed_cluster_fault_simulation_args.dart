// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_list_managed_cluster_fault_simulation_args_doc}
/// Arguments for listManagedClusterFaultSimulation.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_list_managed_cluster_fault_simulation_args_doc}
class ListManagedClusterFaultSimulationArgs {
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListManagedClusterFaultSimulationArgs].
  /// [clusterName] The name of the cluster resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListManagedClusterFaultSimulationArgs({
    required this.clusterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListManagedClusterFaultSimulationArgs.fromMap(Map<String, dynamic> map) {
    return ListManagedClusterFaultSimulationArgs(
      clusterName: (map['clusterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}


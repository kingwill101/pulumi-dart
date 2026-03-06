// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_stack_get_hci_cluster_get_hci_cluster_args_doc}
/// Arguments for getHciCluster.
/// {@endtemplate}
/// {@macro pulumi_stack_get_hci_cluster_get_hci_cluster_args_doc}
class GetHciClusterArgs {
  /// The name of the Azure Stack HCI Cluster.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Azure Stack HCI Cluster exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHciClusterArgs].
  /// [name] The name of the Azure Stack HCI Cluster.
  /// [resourceGroupName] The name of the Resource Group where the Azure Stack HCI Cluster exists.
  const GetHciClusterArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHciClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetHciClusterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}


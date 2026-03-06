// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_avs_cluster_cluster_args_doc}
class ClusterArgs {
  /// The count of the Azure VMware Solution Cluster nodes.
  final pulumi.Input<int> clusterNodeCount;
  /// The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String>? name;
  /// The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String> skuName;
  /// The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String> vmwareCloudId;

  /// Creates a new [ClusterArgs].
  /// [clusterNodeCount] The count of the Azure VMware Solution Cluster nodes.
  /// [name] The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  /// [skuName] The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  /// [vmwareCloudId] The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  const ClusterArgs({
    required this.clusterNodeCount,
    this.name,
    required this.skuName,
    required this.vmwareCloudId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNodeCount': clusterNodeCount,
      'name': ?name,
      'skuName': skuName,
      'vmwareCloudId': vmwareCloudId,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterNodeCount: pulumi.Input.fromValue(map['clusterNodeCount'] as int),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: pulumi.Input.fromValue(map['skuName'] as String),
      vmwareCloudId: pulumi.Input.fromValue(map['vmwareCloudId'] as String),
    );
  }
}


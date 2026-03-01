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
  ClusterArgs({
    required pulumi.Output<int> clusterNodeCount,
    pulumi.Output<String>? name,
    required pulumi.Output<String> skuName,
    required pulumi.Output<String> vmwareCloudId,
  }) :
      clusterNodeCount = pulumi.Input.asInput<int>(clusterNodeCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      skuName = pulumi.Input.asInput<String>(skuName),
      vmwareCloudId = pulumi.Input.asInput<String>(vmwareCloudId);

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
      clusterNodeCount: pulumi.Output.create<int>(map['clusterNodeCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      vmwareCloudId: pulumi.Output.create<String>(map['vmwareCloudId'] as String),
    );
  }
}


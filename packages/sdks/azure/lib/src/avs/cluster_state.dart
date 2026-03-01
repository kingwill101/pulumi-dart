// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The count of the Azure VMware Solution Cluster nodes.
  final pulumi.Input<int>? clusterNodeCount;
  /// A number that identifies this Cluster in its Azure VMware Solution Private Cloud.
  final pulumi.Input<int>? clusterNumber;
  /// A list of hosts in the Azure VMware Solution Cluster.
  final pulumi.Input<List<String>>? hosts;
  /// The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String>? name;
  /// The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String>? skuName;
  /// The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String>? vmwareCloudId;

  /// Creates a new [ClusterState].
  /// [clusterNodeCount] The count of the Azure VMware Solution Cluster nodes.
  /// [clusterNumber] A number that identifies this Cluster in its Azure VMware Solution Private Cloud.
  /// [hosts] A list of hosts in the Azure VMware Solution Cluster.
  /// [name] The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  /// [skuName] The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  /// [vmwareCloudId] The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  ClusterState({
    pulumi.Output<int>? clusterNodeCount,
    pulumi.Output<int>? clusterNumber,
    pulumi.Output<List<String>>? hosts,
    pulumi.Output<String>? name,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? vmwareCloudId,
  }) :
      clusterNodeCount = pulumi.Input.asOptionalInput<int>(clusterNodeCount),
      clusterNumber = pulumi.Input.asOptionalInput<int>(clusterNumber),
      hosts = pulumi.Input.asOptionalInput<List<String>>(hosts),
      name = pulumi.Input.asOptionalInput<String>(name),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      vmwareCloudId = pulumi.Input.asOptionalInput<String>(vmwareCloudId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterNodeCount': ?clusterNodeCount,
      'clusterNumber': ?clusterNumber,
      'hosts': ?hosts,
      'name': ?name,
      'skuName': ?skuName,
      'vmwareCloudId': ?vmwareCloudId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterNodeCount: map['clusterNodeCount'] == null ? null : pulumi.Output.create<int>(map['clusterNodeCount'] as int),
      clusterNumber: map['clusterNumber'] == null ? null : pulumi.Output.create<int>(map['clusterNumber'] as int),
      hosts: map['hosts'] == null ? null : pulumi.Output.create<List<String>>((map['hosts'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      vmwareCloudId: map['vmwareCloudId'] == null ? null : pulumi.Output.create<String>(map['vmwareCloudId'] as String),
    );
  }
}


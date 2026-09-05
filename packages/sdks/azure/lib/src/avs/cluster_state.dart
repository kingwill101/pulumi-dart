// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The count of the Azure VMware Solution Cluster nodes.
  final pulumi.Input<int?>? clusterNodeCount;
  /// A number that identifies this Cluster in its Azure VMware Solution Private Cloud.
  final pulumi.Input<int?>? clusterNumber;
  /// A list of hosts in the Azure VMware Solution Cluster.
  final pulumi.Input<List<String>?>? hosts;
  /// The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String?>? name;
  /// The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String?>? skuName;
  /// The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  final pulumi.Input<String?>? vmwareCloudId;

  /// Creates a new [ClusterState].
  /// [clusterNodeCount] The count of the Azure VMware Solution Cluster nodes.
  /// [clusterNumber] A number that identifies this Cluster in its Azure VMware Solution Private Cloud.
  /// [hosts] A list of hosts in the Azure VMware Solution Cluster.
  /// [name] The name which should be used for this Azure VMware Solution Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  /// [skuName] The Cluster SKU to use. Possible values are `av20`, `av36`, `av36t`, `av36p`, `av48`, `av48t`, `av36pt`, `av52`, `av52t`, and `av64`. Changing this forces a new Azure VMware Solution Cluster to be created.
  /// [vmwareCloudId] The ID of the Azure VMware Solution Private Cloud in which to create this Cluster. Changing this forces a new Azure VMware Solution Cluster to be created.
  const ClusterState({
    this.clusterNodeCount,
    this.clusterNumber,
    this.hosts,
    this.name,
    this.skuName,
    this.vmwareCloudId,
  });

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
      clusterNodeCount: (() { final guardedValue = map['clusterNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      clusterNumber: (() { final guardedValue = map['clusterNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareCloudId: (() { final guardedValue = map['vmwareCloudId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

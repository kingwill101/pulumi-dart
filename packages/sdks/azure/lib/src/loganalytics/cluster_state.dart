// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The GUID of the cluster.
  final pulumi.Input<String>? clusterId;
  /// An `identity` block as defined below. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<ClusterIdentity>? identity;
  /// The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`, `10000`, `25000`, or `50000`. Defaults to `100`.
  ///
  /// > **Note:** The cluster capacity must start at 100 GB and can be set to 500, 1000, 2000 or 5000 GB/day. For more information on cluster costs, see [Dedicated clusters](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#dedicated-clusters).
  final pulumi.Input<int>? sizeGb;
  /// A mapping of tags which should be assigned to the Log Analytics Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterState].
  /// [clusterId] The GUID of the cluster.
  /// [identity] An `identity` block as defined below. Changing this forces a new Log Analytics Cluster to be created.
  /// [location] The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  /// [name] The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  /// [sizeGb] The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`, `10000`, `25000`, or `50000`. Defaults to `100`.
  /// [tags] A mapping of tags which should be assigned to the Log Analytics Cluster.
  ClusterState({
    pulumi.Output<String>? clusterId,
    pulumi.Output<ClusterIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? sizeGb,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      identity = pulumi.Input.asOptionalInput<ClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sizeGb = pulumi.Input.asOptionalInput<int>(sizeGb),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sizeGb': ?sizeGb,
      'tags': ?tags,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ClusterIdentity>(ClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sizeGb: map['sizeGb'] == null ? null : pulumi.Output.create<int>(map['sizeGb'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


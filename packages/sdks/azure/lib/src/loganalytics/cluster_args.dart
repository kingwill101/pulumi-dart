// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_identity.dart';

/// {@template pulumi_loganalytics_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_loganalytics_cluster_cluster_args_doc}
class ClusterArgs {
  /// An `identity` block as defined below. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<ClusterIdentity> identity;
  /// The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`, `10000`, `25000`, or `50000`. Defaults to `100`.
  ///
  /// > **Note:** The cluster capacity must start at 100 GB and can be set to 500, 1000, 2000 or 5000 GB/day. For more information on cluster costs, see [Dedicated clusters](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#dedicated-clusters).
  final pulumi.Input<int>? sizeGb;
  /// A mapping of tags which should be assigned to the Log Analytics Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [identity] An `identity` block as defined below. Changing this forces a new Log Analytics Cluster to be created.
  /// [location] The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  /// [name] The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created.
  /// [resourceGroupName] The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  /// [sizeGb] The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`, `10000`, `25000`, or `50000`. Defaults to `100`.
  /// [tags] A mapping of tags which should be assigned to the Log Analytics Cluster.
  ClusterArgs({
    required this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.sizeGb,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<ClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sizeGb': ?sizeGb,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      identity: (ClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


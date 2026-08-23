// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_orchestrator_slurm_node_set_compute_instance.dart';
import 'cluster_orchestrator_slurm_node_set_storage_config.dart';

class ClusterOrchestratorSlurmNodeSet {
  /// ID of the compute resource on which this nodeset will run. Must match a key
  /// in the cluster's compute_resources.
  final pulumi.Input<String>? computeId;
  /// When set in a SlurmNodeSet, indicates that the nodeset should be backed
  /// by Compute Engine VM instances.
  /// Structure is documented below.
  final pulumi.Input<ClusterOrchestratorSlurmNodeSetComputeInstance>? computeInstance;
  /// Identifier for the nodeset, which allows it to be referenced by partitions.
  /// Must conform to
  /// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  final pulumi.Input<String> id;
  /// Controls how many additional nodes a cluster can bring online to handle
  /// workloads. Set this value to enable dynamic node creation and limit the
  /// number of additional nodes the cluster can bring online. Leave empty if you
  /// do not want the cluster to create nodes dynamically, and instead rely only
  /// on static nodes.
  final pulumi.Input<String>? maxDynamicNodeCount;
  /// Number of nodes to be statically created for this nodeset. The cluster will
  /// attempt to ensure that at least this many nodes exist at all times.
  final pulumi.Input<String>? staticNodeCount;
  /// How storage resources should be mounted on each compute
  /// node.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterOrchestratorSlurmNodeSetStorageConfig>>? storageConfigs;

  /// Creates a new [ClusterOrchestratorSlurmNodeSet].
  /// [computeId] ID of the compute resource on which this nodeset will run. Must match a key
  /// [computeInstance] When set in a SlurmNodeSet, indicates that the nodeset should be backed
  /// [id] Identifier for the nodeset, which allows it to be referenced by partitions.
  /// [maxDynamicNodeCount] Controls how many additional nodes a cluster can bring online to handle
  /// [staticNodeCount] Number of nodes to be statically created for this nodeset. The cluster will
  /// [storageConfigs] How storage resources should be mounted on each compute
  const ClusterOrchestratorSlurmNodeSet({
    this.computeId,
    this.computeInstance,
    required this.id,
    this.maxDynamicNodeCount,
    this.staticNodeCount,
    this.storageConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeId': ?computeId,
      'computeInstance': ?pulumi.Input.mapOptionalInputValue<ClusterOrchestratorSlurmNodeSetComputeInstance, Map<String, dynamic>>(computeInstance, (value) => value.toMap()),
      'id': id,
      'maxDynamicNodeCount': ?maxDynamicNodeCount,
      'staticNodeCount': ?staticNodeCount,
      'storageConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterOrchestratorSlurmNodeSetStorageConfig>, List<Map<String, dynamic>>>(storageConfigs, (value) => pulumi.Input.encodeList<ClusterOrchestratorSlurmNodeSetStorageConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClusterOrchestratorSlurmNodeSet.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmNodeSet(
      computeId: (() { final guardedValue = map['computeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeInstance: (() { final guardedValue = map['computeInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterOrchestratorSlurmNodeSetComputeInstance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      maxDynamicNodeCount: (() { final guardedValue = map['maxDynamicNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticNodeCount: (() { final guardedValue = map['staticNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageConfigs: (() { final guardedValue = map['storageConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterOrchestratorSlurmNodeSetStorageConfig>(guardedValue, (value) => ClusterOrchestratorSlurmNodeSetStorageConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

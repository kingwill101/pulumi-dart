// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition {
  /// Partition-scoped Slurm settings, emitted as additional 'Key=Value' pairs
  /// on this partition's 'PartitionName=' line in slurm.conf.
  ///
  /// Example:
  /// { "MaxTime":       "4-00:00:00",
  /// "DenyAccounts":  "low-pri",
  /// "PriorityTier":  "20",
  /// "OverSubscribe": "YES:4" }
  ///
  /// Note: values set here take precedence over service-computed defaults for
  /// the same parameter (for example 'OverSubscribe' and 'DefMemPerCPU', which
  /// the service otherwise derives from the partition's exclusivity and from
  /// the memory per CPU of its nodes).
  ///
  /// 'Default' is rejected here: which partition is the default is a
  /// cluster-scoped choice, so it belongs in 'SlurmSpec.default_partition_id'.
  final pulumi.Input<Map<String, String>?>? config;
  /// an identifier for the resource with format `projects/{{project}}/locations/{{region}}/modelDevelopmentClusters/{{model_development_cluster_id}}`
  final pulumi.Input<String> id;
  /// Node pools for the slurm partition
  final pulumi.Input<List<String>> nodePoolIds;

  /// Creates a new [AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition].
  /// [config] Partition-scoped Slurm settings, emitted as additional 'Key=Value' pairs
  /// [id] an identifier for the resource with format `projects/{{project}}/locations/{{region}}/modelDevelopmentClusters/{{model_development_cluster_id}}`
  /// [nodePoolIds] Node pools for the slurm partition
  const AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition({
    this.config,
    required this.id,
    required this.nodePoolIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'id': id,
      'nodePoolIds': nodePoolIds,
    };
  }

  factory AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      nodePoolIds: pulumi.Input.fromValue((map['nodePoolIds'] as List).cast<String>()),
    );
  }
}

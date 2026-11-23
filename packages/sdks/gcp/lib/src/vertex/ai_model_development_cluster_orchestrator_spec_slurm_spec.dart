// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_orchestrator_spec_slurm_spec_node_set.dart';
import 'ai_model_development_cluster_orchestrator_spec_slurm_spec_partition.dart';

class AiModelDevelopmentClusterOrchestratorSpecSlurmSpec {
  /// Cluster-scoped Slurm settings, emitted as global 'Key=Value' lines in
  /// slurm.conf.
  ///
  /// Keys are Slurm parameter names exactly as documented by SchedMD
  /// (https://slurm.schedmd.com/slurm.conf.html), matched case-insensitively.
  /// Values are written the way slurm.conf writes them, including composite
  /// forms such as 'bf_window=1440,bf_resolution=600'.
  ///
  /// Example:
  /// { "PriorityType":            "priority/multifactor",
  /// "PriorityWeightAge":       "1000",
  /// "PreemptMode":             "SUSPEND,GANG",
  /// "SchedulerParameters":     "bf_window=1440,bf_resolution=600" }
  ///
  /// Unsupported, reserved, or misspelled parameters, and values that are not
  /// legal for the parameter, are rejected at request time with the offending
  /// parameter named; they are never silently dropped. Settings
  /// that apply to a single partition or node pool belong in
  /// 'SlurmPartition.config' or 'SlurmNodeSet.config' instead -
  /// several parameters (e.g. 'DefMemPerCPU', 'OverTimeLimit', 'PreemptMode')
  /// are valid at more than one scope with different meanings and different
  /// legal values.
  ///
  /// On update this map is replaced wholesale; supply the complete desired set.
  final pulumi.Input<Map<String, String>?>? config;
  /// Id of the partition that Slurm jobs submitted without an explicit
  /// partition run on, for example 'sbatch' without '--partition'. Must match
  /// the 'id' of one of 'partitions'.
  ///
  /// If unset, the service uses the first entry of 'partitions' and this field
  /// stays empty; the cluster always has a default partition whether or not this
  /// field is set. Setting it makes the choice independent of list order, which
  /// matters because 'partitions' is replaced wholesale on update: reordering
  /// the list, or prepending a partition to it, otherwise moves the default and
  /// silently redirects every job submitted without '--partition'.
  final pulumi.Input<String?>? defaultPartitionId;
  /// Custom bash scripts executed after each slurm job on every allocated node.
  final pulumi.Input<List<String>?>? epilogBashScripts;
  /// Full name of the Filestore to be mounted as /home directory on every node.
  final pulumi.Input<String> homeDirectoryStorage;
  /// The node pool id to be used as slurm login node.
  final pulumi.Input<String> loginNodePoolId;
  /// Node-scoped Slurm settings, keyed by node pool. At most one entry per node
  /// pool. Node pools without an entry use the settings derived by the cluster's
  /// Slurm controller.
  final pulumi.Input<List<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet>?>? nodeSets;
  /// The Slurm partitions spec.
  final pulumi.Input<List<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition>?>? partitions;
  /// Custom bash scripts executed before each slurm job on every allocated node.
  final pulumi.Input<List<String>?>? prologBashScripts;

  /// Creates a new [AiModelDevelopmentClusterOrchestratorSpecSlurmSpec].
  /// [config] Cluster-scoped Slurm settings, emitted as global 'Key=Value' lines in
  /// [defaultPartitionId] Id of the partition that Slurm jobs submitted without an explicit
  /// [epilogBashScripts] Custom bash scripts executed after each slurm job on every allocated node.
  /// [homeDirectoryStorage] Full name of the Filestore to be mounted as /home directory on every node.
  /// [loginNodePoolId] The node pool id to be used as slurm login node.
  /// [nodeSets] Node-scoped Slurm settings, keyed by node pool. At most one entry per node
  /// [partitions] The Slurm partitions spec.
  /// [prologBashScripts] Custom bash scripts executed before each slurm job on every allocated node.
  const AiModelDevelopmentClusterOrchestratorSpecSlurmSpec({
    this.config,
    this.defaultPartitionId,
    this.epilogBashScripts,
    required this.homeDirectoryStorage,
    required this.loginNodePoolId,
    this.nodeSets,
    this.partitions,
    this.prologBashScripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'defaultPartitionId': ?defaultPartitionId,
      'epilogBashScripts': ?epilogBashScripts,
      'homeDirectoryStorage': homeDirectoryStorage,
      'loginNodePoolId': loginNodePoolId,
      'nodeSets': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet>, List<Map<String, dynamic>>>(nodeSets, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitions': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition>, List<Map<String, dynamic>>>(partitions, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prologBashScripts': ?prologBashScripts,
    };
  }

  factory AiModelDevelopmentClusterOrchestratorSpecSlurmSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterOrchestratorSpecSlurmSpec(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultPartitionId: (() { final guardedValue = map['defaultPartitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      epilogBashScripts: (() { final guardedValue = map['epilogBashScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      homeDirectoryStorage: pulumi.Input.fromValue(map['homeDirectoryStorage'] as String),
      loginNodePoolId: pulumi.Input.fromValue(map['loginNodePoolId'] as String),
      nodeSets: (() { final guardedValue = map['nodeSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet>(guardedValue, (value) => AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      partitions: (() { final guardedValue = map['partitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition>(guardedValue, (value) => AiModelDevelopmentClusterOrchestratorSpecSlurmSpecPartition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prologBashScripts: (() { final guardedValue = map['prologBashScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

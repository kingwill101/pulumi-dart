// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_orchestrator_slurm_login_nodes.dart';
import 'cluster_orchestrator_slurm_node_set.dart';
import 'cluster_orchestrator_slurm_partition.dart';

class ClusterOrchestratorSlurm {
  /// Default partition to use for submitted jobs that do not explicitly specify
  /// a partition. Required if and only if there is more than one partition, in
  /// which case it must match the id of one of the partitions.
  final pulumi.Input<String>? defaultPartition;
  /// Slurm [epilog scripts](https://slurm.schedmd.com/prolog_epilog.html), which
  /// will be executed by compute nodes whenever a node finishes running a job.
  /// Values must not be empty.
  final pulumi.Input<List<String>>? epilogBashScripts;
  /// Configuration for Slurm [login
  /// nodes](https://slurm.schedmd.com/quickstart_admin.html#login) in the cluster.
  /// Login nodes are Compute Engine VM instances that allow users to access the
  /// cluster over SSH.
  /// Structure is documented below.
  final pulumi.Input<ClusterOrchestratorSlurmLoginNodes> loginNodes;
  /// Configuration of Slurm nodesets, which define groups of compute resources
  /// that can be used by Slurm. At least one compute node is required.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterOrchestratorSlurmNodeSet>> nodeSets;
  /// Configuration of Slurm partitions, which group one or more nodesets. Acts
  /// as a queue against which jobs can be submitted. At least one partition is
  /// required.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterOrchestratorSlurmPartition>> partitions;
  /// Slurm [prolog scripts](https://slurm.schedmd.com/prolog_epilog.html), which
  /// will be executed by compute nodes before a node begins running a new job.
  /// Values must not be empty.
  final pulumi.Input<List<String>>? prologBashScripts;

  /// Creates a new [ClusterOrchestratorSlurm].
  /// [defaultPartition] Default partition to use for submitted jobs that do not explicitly specify
  /// [epilogBashScripts] Slurm [epilog scripts](https://slurm.schedmd.com/prolog_epilog.html), which
  /// [loginNodes] Configuration for Slurm [login
  /// [nodeSets] Configuration of Slurm nodesets, which define groups of compute resources
  /// [partitions] Configuration of Slurm partitions, which group one or more nodesets. Acts
  /// [prologBashScripts] Slurm [prolog scripts](https://slurm.schedmd.com/prolog_epilog.html), which
  const ClusterOrchestratorSlurm({
    this.defaultPartition,
    this.epilogBashScripts,
    required this.loginNodes,
    required this.nodeSets,
    required this.partitions,
    this.prologBashScripts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPartition': ?defaultPartition,
      'epilogBashScripts': ?epilogBashScripts,
      'loginNodes': pulumi.Input.mapInputValue<ClusterOrchestratorSlurmLoginNodes, Map<String, dynamic>>(loginNodes, (value) => value.toMap()),
      'nodeSets': pulumi.Input.mapInputValue<List<ClusterOrchestratorSlurmNodeSet>, List<Map<String, dynamic>>>(nodeSets, (value) => pulumi.Input.encodeList<ClusterOrchestratorSlurmNodeSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'partitions': pulumi.Input.mapInputValue<List<ClusterOrchestratorSlurmPartition>, List<Map<String, dynamic>>>(partitions, (value) => pulumi.Input.encodeList<ClusterOrchestratorSlurmPartition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prologBashScripts': ?prologBashScripts,
    };
  }

  factory ClusterOrchestratorSlurm.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurm(
      defaultPartition: (() { final guardedValue = map['defaultPartition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      epilogBashScripts: (() { final guardedValue = map['epilogBashScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loginNodes: pulumi.Input.fromValue(ClusterOrchestratorSlurmLoginNodes.fromMap((map['loginNodes']! as Map).cast<String, dynamic>())),
      nodeSets: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterOrchestratorSlurmNodeSet>(map['nodeSets']!, (value) => ClusterOrchestratorSlurmNodeSet.fromMap((value as Map).cast<String, dynamic>()))),
      partitions: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterOrchestratorSlurmPartition>(map['partitions']!, (value) => ClusterOrchestratorSlurmPartition.fromMap((value as Map).cast<String, dynamic>()))),
      prologBashScripts: (() { final guardedValue = map['prologBashScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

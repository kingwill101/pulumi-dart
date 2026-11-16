// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet {
  /// Node-scoped Slurm settings, emitted as additional 'Key=Value' pairs on the
  /// 'NodeName=' line for this node pool's nodes in slurm.conf.
  ///
  /// Example:
  /// { "Features":     "a3mega,nvlink",
  /// "Weight":       "10",
  /// "MemSpecLimit": "4096" }
  ///
  /// On update this map is replaced wholesale; supply the complete desired set.
  final pulumi.Input<Map<String, String>?>? config;
  /// (Output)
  /// The ID of the node pool.
  final pulumi.Input<String> nodePoolId;

  /// Creates a new [AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet].
  /// [config] Node-scoped Slurm settings, emitted as additional 'Key=Value' pairs on the
  /// [nodePoolId] (Output)
  const AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet({
    this.config,
    required this.nodePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'nodePoolId': nodePoolId,
    };
  }

  factory AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterOrchestratorSpecSlurmSpecNodeSet(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodePoolId: pulumi.Input.fromValue(map['nodePoolId'] as String),
    );
  }
}

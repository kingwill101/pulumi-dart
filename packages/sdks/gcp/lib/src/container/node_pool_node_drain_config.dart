// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeDrainConfig {
  /// The duration of the grace termination period for node drain.
  final pulumi.Input<String>? graceTerminationDuration;
  /// The duration of the PDB timeout period for node drain.
  final pulumi.Input<String>? pdbTimeoutDuration;
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final pulumi.Input<bool>? respectPdbDuringNodePoolDeletion;

  /// Creates a new [NodePoolNodeDrainConfig].
  /// [graceTerminationDuration] The duration of the grace termination period for node drain.
  /// [pdbTimeoutDuration] The duration of the PDB timeout period for node drain.
  /// [respectPdbDuringNodePoolDeletion] Whether to respect PodDisruptionBudget policy during node pool deletion.
  const NodePoolNodeDrainConfig({
    this.graceTerminationDuration,
    this.pdbTimeoutDuration,
    this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceTerminationDuration': ?graceTerminationDuration,
      'pdbTimeoutDuration': ?pdbTimeoutDuration,
      'respectPdbDuringNodePoolDeletion': ?respectPdbDuringNodePoolDeletion,
    };
  }

  factory NodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeDrainConfig(
      graceTerminationDuration: (() { final guardedValue = map['graceTerminationDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pdbTimeoutDuration: (() { final guardedValue = map['pdbTimeoutDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      respectPdbDuringNodePoolDeletion: (() { final guardedValue = map['respectPdbDuringNodePoolDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

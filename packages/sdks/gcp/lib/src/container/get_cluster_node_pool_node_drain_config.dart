// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeDrainConfig {
  /// The duration of the grace termination period for node drain.
  final pulumi.Input<String> graceTerminationDuration;
  /// The duration of the PDB timeout period for node drain.
  final pulumi.Input<String> pdbTimeoutDuration;
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final pulumi.Input<bool> respectPdbDuringNodePoolDeletion;

  /// Creates a new [GetClusterNodePoolNodeDrainConfig].
  /// [graceTerminationDuration] The duration of the grace termination period for node drain.
  /// [pdbTimeoutDuration] The duration of the PDB timeout period for node drain.
  /// [respectPdbDuringNodePoolDeletion] Whether to respect PodDisruptionBudget policy during node pool deletion.
  const GetClusterNodePoolNodeDrainConfig({
    required this.graceTerminationDuration,
    required this.pdbTimeoutDuration,
    required this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'graceTerminationDuration': graceTerminationDuration,
      'pdbTimeoutDuration': pdbTimeoutDuration,
      'respectPdbDuringNodePoolDeletion': respectPdbDuringNodePoolDeletion,
    };
  }

  factory GetClusterNodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeDrainConfig(
      graceTerminationDuration: pulumi.Input.fromValue(map['graceTerminationDuration'] as String),
      pdbTimeoutDuration: pulumi.Input.fromValue(map['pdbTimeoutDuration'] as String),
      respectPdbDuringNodePoolDeletion: pulumi.Input.fromValue(map['respectPdbDuringNodePoolDeletion'] as bool),
    );
  }
}

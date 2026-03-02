// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolNodeDrainConfig {
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final pulumi.Input<bool>? respectPdbDuringNodePoolDeletion;

  /// Creates a new [ClusterNodePoolNodeDrainConfig].
  /// [respectPdbDuringNodePoolDeletion] Whether to respect PodDisruptionBudget policy during node pool deletion.
  ClusterNodePoolNodeDrainConfig({
    this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'respectPdbDuringNodePoolDeletion': ?respectPdbDuringNodePoolDeletion,
    };
  }

  factory ClusterNodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolNodeDrainConfig(
      respectPdbDuringNodePoolDeletion: map['respectPdbDuringNodePoolDeletion'] == null ? null : (map['respectPdbDuringNodePoolDeletion']! as bool).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolNodeDrainConfig {
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final pulumi.Input<bool>? respectPdbDuringNodePoolDeletion;

  /// Creates a new [NodePoolNodeDrainConfig].
  /// [respectPdbDuringNodePoolDeletion] Whether to respect PodDisruptionBudget policy during node pool deletion.
  NodePoolNodeDrainConfig({
    this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'respectPdbDuringNodePoolDeletion': ?respectPdbDuringNodePoolDeletion,
    };
  }

  factory NodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeDrainConfig(
      respectPdbDuringNodePoolDeletion: map['respectPdbDuringNodePoolDeletion'] == null ? null : (map['respectPdbDuringNodePoolDeletion'] as bool).input(),
    );
  }
}


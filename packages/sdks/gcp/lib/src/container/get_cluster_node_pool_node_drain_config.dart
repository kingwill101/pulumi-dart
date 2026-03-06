// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolNodeDrainConfig {
  /// Whether to respect PodDisruptionBudget policy during node pool deletion.
  final pulumi.Input<bool> respectPdbDuringNodePoolDeletion;

  /// Creates a new [GetClusterNodePoolNodeDrainConfig].
  /// [respectPdbDuringNodePoolDeletion] Whether to respect PodDisruptionBudget policy during node pool deletion.
  const GetClusterNodePoolNodeDrainConfig({
    required this.respectPdbDuringNodePoolDeletion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'respectPdbDuringNodePoolDeletion': respectPdbDuringNodePoolDeletion,
    };
  }

  factory GetClusterNodePoolNodeDrainConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeDrainConfig(
      respectPdbDuringNodePoolDeletion: pulumi.Input.fromValue(map['respectPdbDuringNodePoolDeletion'] as bool),
    );
  }
}


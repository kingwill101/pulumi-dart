// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec {
  /// (Output)
  /// Number of worker nodes to allocate.
  final pulumi.Input<int?>? workerNodeCount;
  /// (Output)
  /// ID of a node pool on the parent ModelDevelopmentCluster (see
  /// `ModelDevelopmentCluster.node_pools[].id`) on which to place the worker
  /// nodes.
  final pulumi.Input<String?>? workerNodePoolId;

  /// Creates a new [AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec].
  /// [workerNodeCount] (Output)
  /// [workerNodePoolId] (Output)
  const AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec({
    this.workerNodeCount,
    this.workerNodePoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerNodeCount': ?workerNodeCount,
      'workerNodePoolId': ?workerNodePoolId,
    };
  }

  factory AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterRuntimeTrainingServiceDeploymentSpec(
      workerNodeCount: (() { final guardedValue = map['workerNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      workerNodePoolId: (() { final guardedValue = map['workerNodePoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeClusterScaleSettings {
  /// Maximum node count.
  final pulumi.Input<int> maxNodeCount;
  /// Minimal node count.
  final pulumi.Input<int> minNodeCount;
  /// Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration.
  final pulumi.Input<String> scaleDownNodesAfterIdleDuration;

  /// Creates a new [ComputeClusterScaleSettings].
  /// [maxNodeCount] Maximum node count.
  /// [minNodeCount] Minimal node count.
  /// [scaleDownNodesAfterIdleDuration] Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration.
  const ComputeClusterScaleSettings({
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.scaleDownNodesAfterIdleDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
      'scaleDownNodesAfterIdleDuration': scaleDownNodesAfterIdleDuration,
    };
  }

  factory ComputeClusterScaleSettings.fromMap(Map<String, dynamic> map) {
    return ComputeClusterScaleSettings(
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
      scaleDownNodesAfterIdleDuration: pulumi.Input.fromValue(map['scaleDownNodesAfterIdleDuration'] as String),
    );
  }
}

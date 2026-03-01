// ignore_for_file: unused_element, unnecessary_cast


class ComputeClusterScaleSettings {
  /// Maximum node count.
  final int maxNodeCount;
  /// Minimal node count.
  final int minNodeCount;
  /// Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration.
  final String scaleDownNodesAfterIdleDuration;

  /// Creates a new [ComputeClusterScaleSettings].
  /// [maxNodeCount] Maximum node count.
  /// [minNodeCount] Minimal node count.
  /// [scaleDownNodesAfterIdleDuration] Node Idle Time Before Scale Down: defines the time until the compute is shutdown when it has gone into Idle state. Is defined according to W3C XML schema standard for duration.
  ComputeClusterScaleSettings({
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
      maxNodeCount: map['maxNodeCount'] as int,
      minNodeCount: map['minNodeCount'] as int,
      scaleDownNodesAfterIdleDuration: map['scaleDownNodesAfterIdleDuration'] as String,
    );
  }
}


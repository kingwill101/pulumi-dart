// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexDedicatedInfrastructureAutoscalingSpec {
  /// The maximum number of replicas. Must be &gt;= `minReplicaCount`
  /// and &lt;= `1000`. If not set or set to `0`, defaults to the greater
  /// of `minReplicaCount` and `2` (or `5` for the v1beta version).
  final pulumi.Input<int?>? maxReplicaCount;
  /// The minimum number of replicas. If not set or set to `0`, defaults
  /// to `2`. Must be &gt;= `1` and &lt;= `1000`.
  final pulumi.Input<int?>? minReplicaCount;

  /// Creates a new [IndexDedicatedInfrastructureAutoscalingSpec].
  /// [maxReplicaCount] The maximum number of replicas. Must be &gt;= `minReplicaCount`
  /// [minReplicaCount] The minimum number of replicas. If not set or set to `0`, defaults
  const IndexDedicatedInfrastructureAutoscalingSpec({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': ?minReplicaCount,
    };
  }

  factory IndexDedicatedInfrastructureAutoscalingSpec.fromMap(Map<String, dynamic> map) {
    return IndexDedicatedInfrastructureAutoscalingSpec(
      maxReplicaCount: (() { final guardedValue = map['maxReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minReplicaCount: (() { final guardedValue = map['minReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

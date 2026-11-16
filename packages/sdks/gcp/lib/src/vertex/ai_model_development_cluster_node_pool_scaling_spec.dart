// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterNodePoolScalingSpec {
  /// maximum size of the node pool,
  /// must be ≥ min_node_count
  final pulumi.Input<int?>? maxNodeCount;
  /// minimum size of the node pool,
  /// must be &gt;= 0 and &lt;= max_node_count
  final pulumi.Input<int?>? minNodeCount;

  /// Creates a new [AiModelDevelopmentClusterNodePoolScalingSpec].
  /// [maxNodeCount] maximum size of the node pool,
  /// [minNodeCount] minimum size of the node pool,
  const AiModelDevelopmentClusterNodePoolScalingSpec({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory AiModelDevelopmentClusterNodePoolScalingSpec.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterNodePoolScalingSpec(
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

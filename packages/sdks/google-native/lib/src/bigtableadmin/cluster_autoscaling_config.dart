// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_limits.dart';
import 'autoscaling_targets.dart';

/// Autoscaling config for a cluster.
class ClusterAutoscalingConfig {
  /// Autoscaling limits for this cluster.
  final pulumi.Input<AutoscalingLimits> autoscalingLimits;
  /// Autoscaling targets for this cluster.
  final pulumi.Input<AutoscalingTargets> autoscalingTargets;

  /// Creates a new [ClusterAutoscalingConfig].
  /// [autoscalingLimits] Autoscaling limits for this cluster.
  /// [autoscalingTargets] Autoscaling targets for this cluster.
  const ClusterAutoscalingConfig({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': pulumi.Input.mapInputValue<AutoscalingLimits, Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap()),
      'autoscalingTargets': pulumi.Input.mapInputValue<AutoscalingTargets, Map<String, dynamic>>(autoscalingTargets, (value) => value.toMap()),
    };
  }

  factory ClusterAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingConfig(
      autoscalingLimits: pulumi.Input.fromValue(AutoscalingLimits.fromMap((map['autoscalingLimits']! as Map).cast<String, dynamic>())),
      autoscalingTargets: pulumi.Input.fromValue(AutoscalingTargets.fromMap((map['autoscalingTargets']! as Map).cast<String, dynamic>())),
    );
  }
}

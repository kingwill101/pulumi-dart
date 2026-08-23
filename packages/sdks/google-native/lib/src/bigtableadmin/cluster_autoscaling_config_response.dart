// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_limits_response.dart';
import 'autoscaling_targets_response.dart';

/// Autoscaling config for a cluster.
class ClusterAutoscalingConfigResponse {
  /// Autoscaling limits for this cluster.
  final pulumi.Input<AutoscalingLimitsResponse> autoscalingLimits;
  /// Autoscaling targets for this cluster.
  final pulumi.Input<AutoscalingTargetsResponse> autoscalingTargets;

  /// Creates a new [ClusterAutoscalingConfigResponse].
  /// [autoscalingLimits] Autoscaling limits for this cluster.
  /// [autoscalingTargets] Autoscaling targets for this cluster.
  const ClusterAutoscalingConfigResponse({
    required this.autoscalingLimits,
    required this.autoscalingTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingLimits': pulumi.Input.mapInputValue<AutoscalingLimitsResponse, Map<String, dynamic>>(autoscalingLimits, (value) => value.toMap()),
      'autoscalingTargets': pulumi.Input.mapInputValue<AutoscalingTargetsResponse, Map<String, dynamic>>(autoscalingTargets, (value) => value.toMap()),
    };
  }

  factory ClusterAutoscalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingConfigResponse(
      autoscalingLimits: pulumi.Input.fromValue(AutoscalingLimitsResponse.fromMap((map['autoscalingLimits']! as Map).cast<String, dynamic>())),
      autoscalingTargets: pulumi.Input.fromValue(AutoscalingTargetsResponse.fromMap((map['autoscalingTargets']! as Map).cast<String, dynamic>())),
    );
  }
}

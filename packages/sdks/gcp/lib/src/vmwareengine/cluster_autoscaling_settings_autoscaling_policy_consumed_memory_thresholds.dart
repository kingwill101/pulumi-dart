// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final pulumi.Input<int> scaleIn;
  /// The utilization triggering the scale-out operation in percent.
  final pulumi.Input<int> scaleOut;

  /// Creates a new [ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  const ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleIn': scaleIn,
      'scaleOut': scaleOut,
    };
  }

  factory ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds(
      scaleIn: pulumi.Input.fromValue((map['scaleIn'] as num).toInt()),
      scaleOut: pulumi.Input.fromValue((map['scaleOut'] as num).toInt()),
    );
  }
}

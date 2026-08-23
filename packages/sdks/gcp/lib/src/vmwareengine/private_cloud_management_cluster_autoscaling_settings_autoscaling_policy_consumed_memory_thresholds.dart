// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final pulumi.Input<int> scaleIn;
  /// The utilization triggering the scale-out operation in percent.
  final pulumi.Input<int> scaleOut;

  /// Creates a new [PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  const PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleIn': scaleIn,
      'scaleOut': scaleOut,
    };
  }

  factory PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds.fromMap(Map<String, dynamic> map) {
    return PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds(
      scaleIn: pulumi.Input.fromValue(map['scaleIn'] as int),
      scaleOut: pulumi.Input.fromValue(map['scaleOut'] as int),
    );
  }
}

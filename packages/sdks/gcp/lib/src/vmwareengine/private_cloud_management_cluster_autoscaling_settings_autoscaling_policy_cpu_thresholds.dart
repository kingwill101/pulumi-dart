// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final pulumi.Input<int> scaleIn;

  /// The utilization triggering the scale-out operation in percent.
  final pulumi.Input<int> scaleOut;

  /// Creates a new [PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scaleIn': scaleIn, 'scaleOut': scaleOut};
  }

  factory PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds(
      scaleIn: pulumi.Input.fromValue(map['scaleIn'] as int),
      scaleOut: pulumi.Input.fromValue(map['scaleOut'] as int),
    );
  }
}

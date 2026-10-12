// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds {
  /// The utilization triggering the scale-in operation in percent.
  final pulumi.Input<int> scaleIn;
  /// The utilization triggering the scale-out operation in percent.
  final pulumi.Input<int> scaleOut;

  /// Creates a new [PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  const PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleIn': scaleIn,
      'scaleOut': scaleOut,
    };
  }

  factory PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds.fromMap(Map<String, dynamic> map) {
    return PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds(
      scaleIn: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['scaleIn'])),
      scaleOut: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['scaleOut'])),
    );
  }
}

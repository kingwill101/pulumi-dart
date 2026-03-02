// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold {
  /// The utilization triggering the scale-in operation in percent.
  final pulumi.Input<int> scaleIn;
  /// The utilization triggering the scale-out operation in percent.
  final pulumi.Input<int> scaleOut;

  /// Creates a new [GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold].
  /// [scaleIn] The utilization triggering the scale-in operation in percent.
  /// [scaleOut] The utilization triggering the scale-out operation in percent.
  GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold({
    required this.scaleIn,
    required this.scaleOut,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scaleIn': scaleIn,
      'scaleOut': scaleOut,
    };
  }

  factory GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold.fromMap(Map<String, dynamic> map) {
    return GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold(
      scaleIn: (map['scaleIn'] as int).input(),
      scaleOut: (map['scaleOut'] as int).input(),
    );
  }
}


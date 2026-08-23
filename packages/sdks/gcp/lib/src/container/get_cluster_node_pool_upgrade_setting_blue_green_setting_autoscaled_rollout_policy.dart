// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final pulumi.Input<String> waitForDrainDuration;

  /// Creates a new [GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy].
  /// [waitForDrainDuration] Time in seconds to wait after cordoning the blue pool before draining the nodes.
  const GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy({
    required this.waitForDrainDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitForDrainDuration': waitForDrainDuration,
    };
  }

  factory GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy(
      waitForDrainDuration: pulumi.Input.fromValue(map['waitForDrainDuration'] as String),
    );
  }
}

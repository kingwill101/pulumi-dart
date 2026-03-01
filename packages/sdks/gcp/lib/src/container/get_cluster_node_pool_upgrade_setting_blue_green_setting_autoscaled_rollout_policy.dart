// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final String waitForDrainDuration;

  /// Creates a new [GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy].
  /// [waitForDrainDuration] Time in seconds to wait after cordoning the blue pool before draining the nodes.
  GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy({
    required this.waitForDrainDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitForDrainDuration': waitForDrainDuration,
    };
  }

  factory GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSettingBlueGreenSettingAutoscaledRolloutPolicy(
      waitForDrainDuration: map['waitForDrainDuration'] as String,
    );
  }
}


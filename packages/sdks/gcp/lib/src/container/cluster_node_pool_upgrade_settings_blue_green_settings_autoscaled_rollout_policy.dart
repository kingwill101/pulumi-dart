// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final pulumi.Input<String>? waitForDrainDuration;

  /// Creates a new [ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy].
  /// [waitForDrainDuration] Time in seconds to wait after cordoning the blue pool before draining the nodes.
  ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy({
    this.waitForDrainDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitForDrainDuration': ?waitForDrainDuration,
    };
  }

  factory ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy(
      waitForDrainDuration: map['waitForDrainDuration'] == null ? null : (map['waitForDrainDuration'] as String).input(),
    );
  }
}


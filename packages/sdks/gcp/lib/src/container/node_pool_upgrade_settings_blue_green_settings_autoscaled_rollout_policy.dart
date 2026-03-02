// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy {
  /// Time in seconds to wait after cordoning the blue pool before draining the nodes.
  final pulumi.Input<String>? waitForDrainDuration;

  /// Creates a new [NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy].
  /// [waitForDrainDuration] Time in seconds to wait after cordoning the blue pool before draining the nodes.
  NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy({
    this.waitForDrainDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'waitForDrainDuration': ?waitForDrainDuration,
    };
  }

  factory NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy.fromMap(Map<String, dynamic> map) {
    return NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy(
      waitForDrainDuration: map['waitForDrainDuration'] == null ? null : (map['waitForDrainDuration']! as String).input(),
    );
  }
}


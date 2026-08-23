// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_upgrade_settings_blue_green_settings_autoscaled_rollout_policy.dart';
import 'node_pool_upgrade_settings_blue_green_settings_standard_rollout_policy.dart';

class NodePoolUpgradeSettingsBlueGreenSettings {
  /// ) Autoscaled rollout policy for blue-green upgrade.
  final pulumi.Input<NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy>? autoscaledRolloutPolicy;
  /// Time needed after draining the entire blue pool.
  /// After this period, the blue pool will be cleaned up.
  final pulumi.Input<String>? nodePoolSoakDuration;
  /// Specifies the standard policy settings for blue-green upgrades.
  final pulumi.Input<NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy>? standardRolloutPolicy;

  /// Creates a new [NodePoolUpgradeSettingsBlueGreenSettings].
  /// [autoscaledRolloutPolicy] ) Autoscaled rollout policy for blue-green upgrade.
  /// [nodePoolSoakDuration] Time needed after draining the entire blue pool.
  /// [standardRolloutPolicy] Specifies the standard policy settings for blue-green upgrades.
  const NodePoolUpgradeSettingsBlueGreenSettings({
    this.autoscaledRolloutPolicy,
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaledRolloutPolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy, Map<String, dynamic>>(autoscaledRolloutPolicy, (value) => value.toMap()),
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy, Map<String, dynamic>>(standardRolloutPolicy, (value) => value.toMap()),
    };
  }

  factory NodePoolUpgradeSettingsBlueGreenSettings.fromMap(Map<String, dynamic> map) {
    return NodePoolUpgradeSettingsBlueGreenSettings(
      autoscaledRolloutPolicy: (() { final guardedValue = map['autoscaledRolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePoolSoakDuration: (() { final guardedValue = map['nodePoolSoakDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardRolloutPolicy: (() { final guardedValue = map['standardRolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node_pool_upgrade_settings_blue_green_settings_autoscaled_rollout_policy.dart';
import 'cluster_node_pool_upgrade_settings_blue_green_settings_standard_rollout_policy.dart';

class ClusterNodePoolUpgradeSettingsBlueGreenSettings {
  /// Autoscaled rollout policy for blue-green upgrade.
  final pulumi.Input<ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy>? autoscaledRolloutPolicy;
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String>? nodePoolSoakDuration;
  /// Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  final pulumi.Input<ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy>? standardRolloutPolicy;

  /// Creates a new [ClusterNodePoolUpgradeSettingsBlueGreenSettings].
  /// [autoscaledRolloutPolicy] Autoscaled rollout policy for blue-green upgrade.
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  ClusterNodePoolUpgradeSettingsBlueGreenSettings({
    this.autoscaledRolloutPolicy,
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaledRolloutPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy, Map<String, dynamic>>(autoscaledRolloutPolicy, (value) => value.toMap()),
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy, Map<String, dynamic>>(standardRolloutPolicy, (value) => value.toMap()),
    };
  }

  factory ClusterNodePoolUpgradeSettingsBlueGreenSettings.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolUpgradeSettingsBlueGreenSettings(
      autoscaledRolloutPolicy: (() { final guardedValue = map['autoscaledRolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolUpgradeSettingsBlueGreenSettingsAutoscaledRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodePoolSoakDuration: (() { final guardedValue = map['nodePoolSoakDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardRolloutPolicy: (() { final guardedValue = map['standardRolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterNodePoolUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


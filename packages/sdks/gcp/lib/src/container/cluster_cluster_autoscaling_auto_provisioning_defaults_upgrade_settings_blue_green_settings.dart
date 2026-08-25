// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings_blue_green_settings_standard_rollout_policy.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings {
  /// Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? nodePoolSoakDuration;
  /// Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  final pulumi.Input<ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy?>? standardRolloutPolicy;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings].
  /// [nodePoolSoakDuration] Time needed after draining entire blue pool. After this period, blue pool will be cleaned up. A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// [standardRolloutPolicy] Standard policy for the blue-green upgrade. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  const ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings({
    this.nodePoolSoakDuration,
    this.standardRolloutPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodePoolSoakDuration': ?nodePoolSoakDuration,
      'standardRolloutPolicy': ?pulumi.Input.mapOptionalInputValue<ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy, Map<String, dynamic>>(standardRolloutPolicy, (value) => value.toMap()),
    };
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings(
      nodePoolSoakDuration: (() { final guardedValue = map['nodePoolSoakDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      standardRolloutPolicy: (() { final guardedValue = map['standardRolloutPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettingsStandardRolloutPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

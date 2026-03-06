// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_autoscaling_auto_provisioning_defaults_upgrade_settings_blue_green_settings.dart';

class ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings {
  /// Settings for blue-green upgrade strategy. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  final pulumi.Input<ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings>? blueGreenSettings;
  /// The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  final pulumi.Input<int>? maxSurge;
  /// The maximum number of nodes that can be simultaneously unavailable during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  final pulumi.Input<int>? maxUnavailable;
  /// Strategy used for node pool update. Strategy can only be one of BLUE_GREEN or SURGE. The default is value is SURGE.
  final pulumi.Input<String>? strategy;

  /// Creates a new [ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings].
  /// [blueGreenSettings] Settings for blue-green upgrade strategy. To be specified when strategy is set to BLUE_GREEN. Structure is documented below.
  /// [maxSurge] The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  /// [maxUnavailable] The maximum number of nodes that can be simultaneously unavailable during the upgrade process. To be used when strategy is set to SURGE. Default is 0.
  /// [strategy] Strategy used for node pool update. Strategy can only be one of BLUE_GREEN or SURGE. The default is value is SURGE.
  const ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings({
    this.blueGreenSettings,
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenSettings': ?pulumi.Input.mapOptionalInputValue<ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings, Map<String, dynamic>>(blueGreenSettings, (value) => value.toMap()),
      'maxSurge': ?maxSurge,
      'maxUnavailable': ?maxUnavailable,
      'strategy': ?strategy,
    };
  }

  factory ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettings(
      blueGreenSettings: (() { final guardedValue = map['blueGreenSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterClusterAutoscalingAutoProvisioningDefaultsUpgradeSettingsBlueGreenSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxSurge: (() { final guardedValue = map['maxSurge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxUnavailable: (() { final guardedValue = map['maxUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


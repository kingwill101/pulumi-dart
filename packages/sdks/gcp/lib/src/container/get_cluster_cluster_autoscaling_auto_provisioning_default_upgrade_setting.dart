// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_autoscaling_auto_provisioning_default_upgrade_setting_blue_green_setting.dart';

class GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting {
  /// Settings for blue-green upgrade strategy.
  final pulumi.Input<List<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting>> blueGreenSettings;
  /// The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
  final pulumi.Input<int> maxSurge;
  /// The maximum number of nodes that can be simultaneously unavailable during the upgrade process.
  final pulumi.Input<int> maxUnavailable;
  /// Update strategy of the node pool.
  final pulumi.Input<String> strategy;

  /// Creates a new [GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting].
  /// [blueGreenSettings] Settings for blue-green upgrade strategy.
  /// [maxSurge] The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
  /// [maxUnavailable] The maximum number of nodes that can be simultaneously unavailable during the upgrade process.
  /// [strategy] Update strategy of the node pool.
  GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting({
    required this.blueGreenSettings,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenSettings': pulumi.Input.mapInputValue<List<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting>, List<Map<String, dynamic>>>(blueGreenSettings, (value) => pulumi.Input.encodeList<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxSurge': maxSurge,
      'maxUnavailable': maxUnavailable,
      'strategy': strategy,
    };
  }

  factory GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSetting(
      blueGreenSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting>(map['blueGreenSettings']!, (value) => GetClusterClusterAutoscalingAutoProvisioningDefaultUpgradeSettingBlueGreenSetting.fromMap((value as Map).cast<String, dynamic>()))),
      maxSurge: pulumi.Input.fromValue(map['maxSurge'] as int),
      maxUnavailable: pulumi.Input.fromValue(map['maxUnavailable'] as int),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
    );
  }
}


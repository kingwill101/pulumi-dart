// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_upgrade_setting_blue_green_setting.dart';

class GetClusterNodePoolUpgradeSetting {
  /// Settings for BlueGreen node pool upgrade.
  final pulumi.Input<List<GetClusterNodePoolUpgradeSettingBlueGreenSetting>> blueGreenSettings;
  /// The number of additional nodes that can be added to the node pool during an upgrade. Increasing maxSurge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater.
  final pulumi.Input<int> maxSurge;
  /// The number of nodes that can be simultaneously unavailable during an upgrade. Increasing maxUnavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater.
  final pulumi.Input<int> maxUnavailable;
  /// Update strategy for the given nodepool.
  final pulumi.Input<String> strategy;

  /// Creates a new [GetClusterNodePoolUpgradeSetting].
  /// [blueGreenSettings] Settings for BlueGreen node pool upgrade.
  /// [maxSurge] The number of additional nodes that can be added to the node pool during an upgrade. Increasing maxSurge raises the number of nodes that can be upgraded simultaneously. Can be set to 0 or greater.
  /// [maxUnavailable] The number of nodes that can be simultaneously unavailable during an upgrade. Increasing maxUnavailable raises the number of nodes that can be upgraded in parallel. Can be set to 0 or greater.
  /// [strategy] Update strategy for the given nodepool.
  const GetClusterNodePoolUpgradeSetting({
    required this.blueGreenSettings,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenSettings': pulumi.Input.mapInputValue<List<GetClusterNodePoolUpgradeSettingBlueGreenSetting>, List<Map<String, dynamic>>>(blueGreenSettings, (value) => pulumi.Input.encodeList<GetClusterNodePoolUpgradeSettingBlueGreenSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxSurge': maxSurge,
      'maxUnavailable': maxUnavailable,
      'strategy': strategy,
    };
  }

  factory GetClusterNodePoolUpgradeSetting.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolUpgradeSetting(
      blueGreenSettings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterNodePoolUpgradeSettingBlueGreenSetting>(map['blueGreenSettings']!, (value) => GetClusterNodePoolUpgradeSettingBlueGreenSetting.fromMap((value as Map).cast<String, dynamic>()))),
      maxSurge: pulumi.Input.fromValue((map['maxSurge'] as num).toInt()),
      maxUnavailable: pulumi.Input.fromValue((map['maxUnavailable'] as num).toInt()),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
    );
  }
}

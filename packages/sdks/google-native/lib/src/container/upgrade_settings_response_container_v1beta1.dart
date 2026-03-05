// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blue_green_settings_response_container_v1beta1.dart';

/// These upgrade settings control the level of parallelism and the level of disruption caused by an upgrade. maxUnavailable controls the number of nodes that can be simultaneously unavailable. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). Note: upgrades inevitably introduce some disruption since workloads need to be moved from old nodes to new, upgraded ones. Even if maxUnavailable=0, this holds true. (Disruption stays within the limits of PodDisruptionBudget, if it is configured.) Consider a hypothetical node pool with 5 nodes having maxSurge=2, maxUnavailable=1. This means the upgrade process upgrades 3 nodes simultaneously. It creates 2 additional (upgraded) nodes, then it brings down 3 old (not yet upgraded) nodes at the same time. This ensures that there are always at least 4 nodes available. These upgrade settings configure the upgrade strategy for the node pool. Use strategy to switch between the strategies applied to the node pool. If the strategy is SURGE, use max_surge and max_unavailable to control the level of parallelism and the level of disruption caused by upgrade. 1. maxSurge controls the number of additional nodes that can be added to the node pool temporarily for the time of the upgrade to increase the number of available nodes. 2. maxUnavailable controls the number of nodes that can be simultaneously unavailable. 3. (maxUnavailable + maxSurge) determines the level of parallelism (how many nodes are being upgraded at the same time). If the strategy is BLUE_GREEN, use blue_green_settings to configure the blue-green upgrade related settings. 1. standard_rollout_policy is the default policy. The policy is used to control the way blue pool gets drained. The draining is executed in the batch mode. The batch size could be specified as either percentage of the node pool size or the number of nodes. batch_soak_duration is the soak time after each batch gets drained. 2. node_pool_soak_duration is the soak time after all blue nodes are drained. After this period, the blue pool nodes will be deleted.
class UpgradeSettingsResponseContainerV1beta1 {
  /// Settings for blue-green upgrade strategy.
  final pulumi.Input<BlueGreenSettingsResponseContainerV1beta1> blueGreenSettings;
  /// The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
  final pulumi.Input<int> maxSurge;
  /// The maximum number of nodes that can be simultaneously unavailable during the upgrade process. A node is considered available if its status is Ready.
  final pulumi.Input<int> maxUnavailable;
  /// Update strategy of the node pool.
  final pulumi.Input<String> strategy;

  /// Creates a new [UpgradeSettingsResponseContainerV1beta1].
  /// [blueGreenSettings] Settings for blue-green upgrade strategy.
  /// [maxSurge] The maximum number of nodes that can be created beyond the current size of the node pool during the upgrade process.
  /// [maxUnavailable] The maximum number of nodes that can be simultaneously unavailable during the upgrade process. A node is considered available if its status is Ready.
  /// [strategy] Update strategy of the node pool.
  UpgradeSettingsResponseContainerV1beta1({
    required this.blueGreenSettings,
    required this.maxSurge,
    required this.maxUnavailable,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blueGreenSettings': pulumi.Input.mapInputValue<BlueGreenSettingsResponseContainerV1beta1, Map<String, dynamic>>(blueGreenSettings, (value) => value.toMap()),
      'maxSurge': maxSurge,
      'maxUnavailable': maxUnavailable,
      'strategy': strategy,
    };
  }

  factory UpgradeSettingsResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return UpgradeSettingsResponseContainerV1beta1(
      blueGreenSettings: pulumi.Input.fromValue(BlueGreenSettingsResponseContainerV1beta1.fromMap((map['blueGreenSettings']! as Map).cast<String, dynamic>())),
      maxSurge: pulumi.Input.fromValue(map['maxSurge'] as int),
      maxUnavailable: pulumi.Input.fromValue(map['maxUnavailable'] as int),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
    );
  }
}


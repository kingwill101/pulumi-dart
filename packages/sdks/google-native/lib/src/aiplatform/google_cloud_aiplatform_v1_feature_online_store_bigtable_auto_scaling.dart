// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling {
  /// Optional. A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  final pulumi.Input<int>? cpuUtilizationTarget;
  /// The maximum number of nodes to scale up to. Must be greater than or equal to min_node_count, and less than or equal to 10 times of 'min_node_count'.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling].
  /// [cpuUtilizationTarget] Optional. A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  /// [maxNodeCount] The maximum number of nodes to scale up to. Must be greater than or equal to min_node_count, and less than or equal to 10 times of 'min_node_count'.
  /// [minNodeCount] The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  const GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling({
    this.cpuUtilizationTarget,
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationTarget': ?cpuUtilizationTarget,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling(
      cpuUtilizationTarget: (() { final guardedValue = map['cpuUtilizationTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
    );
  }
}

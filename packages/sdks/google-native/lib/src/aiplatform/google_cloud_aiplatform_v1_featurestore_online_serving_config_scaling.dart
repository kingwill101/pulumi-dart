// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Online serving scaling configuration. If min_node_count and max_node_count are set to the same value, the cluster will be configured with the fixed number of node (no auto-scaling).
class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling {
  /// Optional. The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set or set to 0, default to 50.
  final pulumi.Input<int>? cpuUtilizationTarget;

  /// The maximum number of nodes to scale up to. Must be greater than min_node_count, and less than or equal to 10 times of 'min_node_count'.
  final pulumi.Input<int>? maxNodeCount;

  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling].
  /// [cpuUtilizationTarget] Optional. The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set or set to 0, default to 50.
  /// [maxNodeCount] The maximum number of nodes to scale up to. Must be greater than min_node_count, and less than or equal to 10 times of 'min_node_count'.
  /// [minNodeCount] The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling({
    this.cpuUtilizationTarget,
    this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationTarget': ?cpuUtilizationTarget,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling(
      cpuUtilizationTarget: (() {
        final guardedValue = map['cpuUtilizationTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxNodeCount: (() {
        final guardedValue = map['maxNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
    );
  }
}

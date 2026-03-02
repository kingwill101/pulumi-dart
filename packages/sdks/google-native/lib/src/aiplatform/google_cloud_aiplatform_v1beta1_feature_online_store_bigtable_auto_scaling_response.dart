// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse {
  /// Optional. A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  final pulumi.Input<int> cpuUtilizationTarget;
  /// The maximum number of nodes to scale up to. Must be greater than or equal to min_node_count, and less than or equal to 10 times of 'min_node_count'.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse].
  /// [cpuUtilizationTarget] Optional. A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  /// [maxNodeCount] The maximum number of nodes to scale up to. Must be greater than or equal to min_node_count, and less than or equal to 10 times of 'min_node_count'.
  /// [minNodeCount] The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse({
    required this.cpuUtilizationTarget,
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationTarget': cpuUtilizationTarget,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeatureOnlineStoreBigtableAutoScalingResponse(
      cpuUtilizationTarget: (map['cpuUtilizationTarget'] as int).input(),
      maxNodeCount: (map['maxNodeCount'] as int).input(),
      minNodeCount: (map['minNodeCount'] as int).input(),
    );
  }
}


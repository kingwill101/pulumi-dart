// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureOnlineStoreBigtableAutoScaling {
  /// A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  final pulumi.Input<int>? cpuUtilizationTarget;
  /// The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of 'minNodeCount'.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [AiFeatureOnlineStoreBigtableAutoScaling].
  /// [cpuUtilizationTarget] A percentage of the cluster's CPU capacity. Can be from 10% to 80%. When a cluster's CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%.
  /// [maxNodeCount] The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of 'minNodeCount'.
  /// [minNodeCount] The minimum number of nodes to scale down to. Must be greater than or equal to 1.
  AiFeatureOnlineStoreBigtableAutoScaling({
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

  factory AiFeatureOnlineStoreBigtableAutoScaling.fromMap(Map<String, dynamic> map) {
    return AiFeatureOnlineStoreBigtableAutoScaling(
      cpuUtilizationTarget: map['cpuUtilizationTarget'] == null ? null : (map['cpuUtilizationTarget']! as int).input(),
      maxNodeCount: (map['maxNodeCount'] as int).input(),
      minNodeCount: (map['minNodeCount'] as int).input(),
    );
  }
}


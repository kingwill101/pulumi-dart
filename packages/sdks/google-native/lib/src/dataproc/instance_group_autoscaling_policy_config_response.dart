// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the size bounds of an instance group, including its proportional size to other groups.
class InstanceGroupAutoscalingPolicyConfigResponse {
  /// Maximum number of instances for this group. Required for primary workers. Note that by default, clusters will not use secondary workers. Required for secondary workers if the minimum secondary instances is set.Primary workers - Bounds: [min_instances, ). Secondary workers - Bounds: [min_instances, ). Default: 0.
  final int maxInstances;
  /// Optional. Minimum number of instances for this group.Primary workers - Bounds: 2, max_instances. Default: 2. Secondary workers - Bounds: 0, max_instances. Default: 0.
  final int minInstances;
  /// Optional. Weight for the instance group, which is used to determine the fraction of total workers in the cluster from this instance group. For example, if primary workers have weight 2, and secondary workers have weight 1, the cluster will have approximately 2 primary workers for each secondary worker.The cluster may not reach the specified balance if constrained by min/max bounds or other autoscaling settings. For example, if max_instances for secondary workers is 0, then only primary workers will be added. The cluster can also be out of balance when created.If weight is not set on any instance group, the cluster will default to equal weight for all groups: the cluster will attempt to maintain an equal number of workers in each group within the configured size bounds for each group. If weight is set for one group only, the cluster will default to zero weight on the unset group. For example if weight is set only on primary workers, the cluster will use primary workers only and no secondary workers.
  final int weight;

  /// Creates a new [InstanceGroupAutoscalingPolicyConfigResponse].
  /// [maxInstances] Maximum number of instances for this group. Required for primary workers. Note that by default, clusters will not use secondary workers. Required for secondary workers if the minimum secondary instances is set.Primary workers - Bounds: [min_instances, ). Secondary workers - Bounds: [min_instances, ). Default: 0.
  /// [minInstances] Optional. Minimum number of instances for this group.Primary workers - Bounds: 2, max_instances. Default: 2. Secondary workers - Bounds: 0, max_instances. Default: 0.
  /// [weight] Optional. Weight for the instance group, which is used to determine the fraction of total workers in the cluster from this instance group. For example, if primary workers have weight 2, and secondary workers have weight 1, the cluster will have approximately 2 primary workers for each secondary worker.The cluster may not reach the specified balance if constrained by min/max bounds or other autoscaling settings. For example, if max_instances for secondary workers is 0, then only primary workers will be added. The cluster can also be out of balance when created.If weight is not set on any instance group, the cluster will default to equal weight for all groups: the cluster will attempt to maintain an equal number of workers in each group within the configured size bounds for each group. If weight is set for one group only, the cluster will default to zero weight on the unset group. For example if weight is set only on primary workers, the cluster will use primary workers only and no secondary workers.
  InstanceGroupAutoscalingPolicyConfigResponse({
    required this.maxInstances,
    required this.minInstances,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': maxInstances,
      'minInstances': minInstances,
      'weight': weight,
    };
  }

  factory InstanceGroupAutoscalingPolicyConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupAutoscalingPolicyConfigResponse(
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      weight: map['weight'] as int,
    );
  }
}


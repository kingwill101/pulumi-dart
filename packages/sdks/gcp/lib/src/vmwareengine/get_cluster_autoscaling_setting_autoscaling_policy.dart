// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_autoscaling_setting_autoscaling_policy_consumed_memory_threshold.dart';
import 'get_cluster_autoscaling_setting_autoscaling_policy_cpu_threshold.dart';
import 'get_cluster_autoscaling_setting_autoscaling_policy_storage_threshold.dart';

class GetClusterAutoscalingSettingAutoscalingPolicy {
  final pulumi.Input<String> autoscalePolicyId;
  /// Utilization thresholds pertaining to amount of consumed memory.
  final pulumi.Input<List<GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>> consumedMemoryThresholds;
  /// Utilization thresholds pertaining to CPU utilization.
  final pulumi.Input<List<GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>> cpuThresholds;
  /// The canonical identifier of the node type to add or remove.
  final pulumi.Input<String> nodeTypeId;
  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final pulumi.Input<int> scaleOutSize;
  /// Utilization thresholds pertaining to amount of consumed storage.
  final pulumi.Input<List<GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>> storageThresholds;

  /// Creates a new [GetClusterAutoscalingSettingAutoscalingPolicy].
  /// [autoscalePolicyId] Required.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  GetClusterAutoscalingSettingAutoscalingPolicy({
    required this.autoscalePolicyId,
    required this.consumedMemoryThresholds,
    required this.cpuThresholds,
    required this.nodeTypeId,
    required this.scaleOutSize,
    required this.storageThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalePolicyId': autoscalePolicyId,
      'consumedMemoryThresholds': pulumi.Input.mapInputValue<List<GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>, List<Map<String, dynamic>>>(consumedMemoryThresholds, (value) => pulumi.Input.encodeList<GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuThresholds': pulumi.Input.mapInputValue<List<GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>, List<Map<String, dynamic>>>(cpuThresholds, (value) => pulumi.Input.encodeList<GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeTypeId': nodeTypeId,
      'scaleOutSize': scaleOutSize,
      'storageThresholds': pulumi.Input.mapInputValue<List<GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>, List<Map<String, dynamic>>>(storageThresholds, (value) => pulumi.Input.encodeList<GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterAutoscalingSettingAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterAutoscalingSettingAutoscalingPolicy(
      autoscalePolicyId: (map['autoscalePolicyId'] as String).input(),
      consumedMemoryThresholds: (pulumi.Input.decodeList<GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>(map['consumedMemoryThresholds'], (value) => GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpuThresholds: (pulumi.Input.decodeList<GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>(map['cpuThresholds'], (value) => GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nodeTypeId: (map['nodeTypeId'] as String).input(),
      scaleOutSize: (map['scaleOutSize'] as int).input(),
      storageThresholds: (pulumi.Input.decodeList<GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>(map['storageThresholds'], (value) => GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


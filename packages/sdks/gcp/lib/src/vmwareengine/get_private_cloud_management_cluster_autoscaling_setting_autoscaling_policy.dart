// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_private_cloud_management_cluster_autoscaling_setting_autoscaling_policy_consumed_memory_threshold.dart';
import 'get_private_cloud_management_cluster_autoscaling_setting_autoscaling_policy_cpu_threshold.dart';
import 'get_private_cloud_management_cluster_autoscaling_setting_autoscaling_policy_storage_threshold.dart';

class GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicy {
  final pulumi.Input<String> autoscalePolicyId;
  /// Utilization thresholds pertaining to amount of consumed memory.
  final pulumi.Input<List<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>> consumedMemoryThresholds;
  /// Utilization thresholds pertaining to CPU utilization.
  final pulumi.Input<List<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>> cpuThresholds;
  /// The canonical identifier of the node type to add or remove.
  final pulumi.Input<String> nodeTypeId;
  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final pulumi.Input<int> scaleOutSize;
  /// Utilization thresholds pertaining to amount of consumed storage.
  final pulumi.Input<List<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>> storageThresholds;

  /// Creates a new [GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicy].
  /// [autoscalePolicyId] Required.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  const GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicy({
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
      'consumedMemoryThresholds': pulumi.Input.mapInputValue<List<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>, List<Map<String, dynamic>>>(consumedMemoryThresholds, (value) => pulumi.Input.encodeList<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuThresholds': pulumi.Input.mapInputValue<List<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>, List<Map<String, dynamic>>>(cpuThresholds, (value) => pulumi.Input.encodeList<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyCpuThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeTypeId': nodeTypeId,
      'scaleOutSize': scaleOutSize,
      'storageThresholds': pulumi.Input.mapInputValue<List<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>, List<Map<String, dynamic>>>(storageThresholds, (value) => pulumi.Input.encodeList<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicy(
      autoscalePolicyId: pulumi.Input.fromValue(map['autoscalePolicyId'] as String),
      consumedMemoryThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>(map['consumedMemoryThresholds']!, (value) => GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold.fromMap((value as Map).cast<String, dynamic>()))),
      cpuThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>(map['cpuThresholds']!, (value) => GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyCpuThreshold.fromMap((value as Map).cast<String, dynamic>()))),
      nodeTypeId: pulumi.Input.fromValue(map['nodeTypeId'] as String),
      scaleOutSize: pulumi.Input.fromValue(map['scaleOutSize'] as int),
      storageThresholds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>(map['storageThresholds']!, (value) => GetPrivateCloudManagementClusterAutoscalingSettingAutoscalingPolicyStorageThreshold.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_management_cluster_autoscaling_settings_autoscaling_policy_consumed_memory_thresholds.dart';
import 'private_cloud_management_cluster_autoscaling_settings_autoscaling_policy_cpu_thresholds.dart';
import 'private_cloud_management_cluster_autoscaling_settings_autoscaling_policy_storage_thresholds.dart';

class PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> autoscalePolicyId;
  /// Utilization thresholds pertaining to amount of consumed memory.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds?>? consumedMemoryThresholds;
  /// Utilization thresholds pertaining to CPU utilization.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds?>? cpuThresholds;
  /// The canonical identifier of the node type to add or remove.
  final pulumi.Input<String> nodeTypeId;
  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final pulumi.Input<int> scaleOutSize;
  /// Utilization thresholds pertaining to amount of consumed storage.
  /// Structure is documented below.
  final pulumi.Input<PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds?>? storageThresholds;

  /// Creates a new [PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy].
  /// [autoscalePolicyId] The identifier for this object. Format specified above.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  const PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy({
    required this.autoscalePolicyId,
    this.consumedMemoryThresholds,
    this.cpuThresholds,
    required this.nodeTypeId,
    required this.scaleOutSize,
    this.storageThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalePolicyId': autoscalePolicyId,
      'consumedMemoryThresholds': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds, Map<String, dynamic>>(consumedMemoryThresholds, (value) => value.toMap()),
      'cpuThresholds': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds, Map<String, dynamic>>(cpuThresholds, (value) => value.toMap()),
      'nodeTypeId': nodeTypeId,
      'scaleOutSize': scaleOutSize,
      'storageThresholds': ?pulumi.Input.mapOptionalInputValue<PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds, Map<String, dynamic>>(storageThresholds, (value) => value.toMap()),
    };
  }

  factory PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy(
      autoscalePolicyId: pulumi.Input.fromValue(map['autoscalePolicyId'] as String),
      consumedMemoryThresholds: (() { final guardedValue = map['consumedMemoryThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuThresholds: (() { final guardedValue = map['cpuThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeTypeId: pulumi.Input.fromValue(map['nodeTypeId'] as String),
      scaleOutSize: pulumi.Input.fromValue((map['scaleOutSize'] as num).toInt()),
      storageThresholds: (() { final guardedValue = map['storageThresholds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

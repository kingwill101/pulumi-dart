// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_autoscaling_settings_autoscaling_policy_consumed_memory_thresholds.dart';
import 'cluster_autoscaling_settings_autoscaling_policy_cpu_thresholds.dart';
import 'cluster_autoscaling_settings_autoscaling_policy_storage_thresholds.dart';

class ClusterAutoscalingSettingsAutoscalingPolicy {
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> autoscalePolicyId;
  /// Utilization thresholds pertaining to amount of consumed memory.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds>? consumedMemoryThresholds;
  /// Utilization thresholds pertaining to CPU utilization.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds>? cpuThresholds;
  /// The canonical identifier of the node type to add or remove.
  final pulumi.Input<String> nodeTypeId;
  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final pulumi.Input<int> scaleOutSize;
  /// Utilization thresholds pertaining to amount of consumed storage.
  /// Structure is documented below.
  final pulumi.Input<ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds>? storageThresholds;

  /// Creates a new [ClusterAutoscalingSettingsAutoscalingPolicy].
  /// [autoscalePolicyId] The identifier for this object. Format specified above.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  ClusterAutoscalingSettingsAutoscalingPolicy({
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
      'consumedMemoryThresholds': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds, Map<String, dynamic>>(consumedMemoryThresholds, (value) => value.toMap()),
      'cpuThresholds': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds, Map<String, dynamic>>(cpuThresholds, (value) => value.toMap()),
      'nodeTypeId': nodeTypeId,
      'scaleOutSize': scaleOutSize,
      'storageThresholds': ?pulumi.Input.mapOptionalInputValue<ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds, Map<String, dynamic>>(storageThresholds, (value) => value.toMap()),
    };
  }

  factory ClusterAutoscalingSettingsAutoscalingPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingSettingsAutoscalingPolicy(
      autoscalePolicyId: (map['autoscalePolicyId'] as String).input(),
      consumedMemoryThresholds: map['consumedMemoryThresholds'] == null ? null : (ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds.fromMap((map['consumedMemoryThresholds']! as Map).cast<String, dynamic>())).input(),
      cpuThresholds: map['cpuThresholds'] == null ? null : (ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds.fromMap((map['cpuThresholds']! as Map).cast<String, dynamic>())).input(),
      nodeTypeId: (map['nodeTypeId'] as String).input(),
      scaleOutSize: (map['scaleOutSize'] as int).input(),
      storageThresholds: map['storageThresholds'] == null ? null : (ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds.fromMap((map['storageThresholds']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


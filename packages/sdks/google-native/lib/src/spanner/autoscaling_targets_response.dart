// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The autoscaling targets for an instance.
class AutoscalingTargetsResponse {
  /// The target high priority cpu utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  final pulumi.Input<int> highPriorityCpuUtilizationPercent;

  /// The target storage utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 100] inclusive.
  final pulumi.Input<int> storageUtilizationPercent;

  /// Creates a new [AutoscalingTargetsResponse].
  /// [highPriorityCpuUtilizationPercent] The target high priority cpu utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  /// [storageUtilizationPercent] The target storage utilization percentage that the autoscaler should be trying to achieve for the instance. This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 100] inclusive.
  AutoscalingTargetsResponse({
    required this.highPriorityCpuUtilizationPercent,
    required this.storageUtilizationPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highPriorityCpuUtilizationPercent': highPriorityCpuUtilizationPercent,
      'storageUtilizationPercent': storageUtilizationPercent,
    };
  }

  factory AutoscalingTargetsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingTargetsResponse(
      highPriorityCpuUtilizationPercent: pulumi.Input.fromValue(
        map['highPriorityCpuUtilizationPercent'] as int,
      ),
      storageUtilizationPercent: pulumi.Input.fromValue(
        map['storageUtilizationPercent'] as int,
      ),
    );
  }
}

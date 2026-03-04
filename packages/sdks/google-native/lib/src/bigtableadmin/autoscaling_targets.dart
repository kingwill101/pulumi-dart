// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Autoscaling targets for a Cluster. These determine the recommended nodes.
class AutoscalingTargets {
  /// The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.
  final pulumi.Input<int>? cpuUtilizationPercent;

  /// The storage utilization that the Autoscaler should be trying to achieve. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will return INVALID_ARGUMENT error. If this value is set to 0, it will be treated as if it were set to the default value: 2560 for SSD, 8192 for HDD.
  final pulumi.Input<int>? storageUtilizationGibPerNode;

  /// Creates a new [AutoscalingTargets].
  /// [cpuUtilizationPercent] The cpu utilization that the Autoscaler should be trying to achieve. This number is on a scale from 0 (no utilization) to 100 (total utilization), and is limited between 10 and 80, otherwise it will return INVALID_ARGUMENT error.
  /// [storageUtilizationGibPerNode] The storage utilization that the Autoscaler should be trying to achieve. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16TiB) for an HDD cluster, otherwise it will return INVALID_ARGUMENT error. If this value is set to 0, it will be treated as if it were set to the default value: 2560 for SSD, 8192 for HDD.
  AutoscalingTargets({
    this.cpuUtilizationPercent,
    this.storageUtilizationGibPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationPercent': ?cpuUtilizationPercent,
      'storageUtilizationGibPerNode': ?storageUtilizationGibPerNode,
    };
  }

  factory AutoscalingTargets.fromMap(Map<String, dynamic> map) {
    return AutoscalingTargets(
      cpuUtilizationPercent: (() {
        final guardedValue = map['cpuUtilizationPercent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      storageUtilizationGibPerNode: (() {
        final guardedValue = map['storageUtilizationGibPerNode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

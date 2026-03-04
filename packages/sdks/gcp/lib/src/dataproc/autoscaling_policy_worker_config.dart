// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscalingPolicyWorkerConfig {
  /// Maximum number of instances for this group.
  final pulumi.Input<int> maxInstances;

  /// Minimum number of instances for this group. Bounds: [2, maxInstances]. Defaults to 2.
  final pulumi.Input<int>? minInstances;

  /// Weight for the instance group, which is used to determine the fraction of total workers
  /// in the cluster from this instance group. For example, if primary workers have weight 2,
  /// and secondary workers have weight 1, the cluster will have approximately 2 primary workers
  /// for each secondary worker.
  /// The cluster may not reach the specified balance if constrained by min/max bounds or other
  /// autoscaling settings. For example, if maxInstances for secondary workers is 0, then only
  /// primary workers will be added. The cluster can also be out of balance when created.
  /// If weight is not set on any instance group, the cluster will default to equal weight for
  /// all groups: the cluster will attempt to maintain an equal number of workers in each group
  /// within the configured size bounds for each group. If weight is set for one group only,
  /// the cluster will default to zero weight on the unset group. For example if weight is set
  /// only on primary workers, the cluster will use primary workers only and no secondary workers.
  final pulumi.Input<int>? weight;

  /// Creates a new [AutoscalingPolicyWorkerConfig].
  /// [maxInstances] Maximum number of instances for this group.
  /// [minInstances] Minimum number of instances for this group. Bounds: [2, maxInstances]. Defaults to 2.
  /// [weight] Weight for the instance group, which is used to determine the fraction of total workers
  AutoscalingPolicyWorkerConfig({
    required this.maxInstances,
    this.minInstances,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': maxInstances,
      'minInstances': ?minInstances,
      'weight': ?weight,
    };
  }

  factory AutoscalingPolicyWorkerConfig.fromMap(Map<String, dynamic> map) {
    return AutoscalingPolicyWorkerConfig(
      maxInstances: pulumi.Input.fromValue(map['maxInstances'] as int),
      minInstances: (() {
        final guardedValue = map['minInstances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      weight: (() {
        final guardedValue = map['weight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

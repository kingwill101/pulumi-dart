// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutoscalingPolicyBasicAlgorithmYarnConfig {
  /// Timeout for YARN graceful decommissioning of Node Managers. Specifies the
  /// duration to wait for jobs to complete before forcefully removing workers
  /// (and potentially interrupting jobs). Only applicable to downscaling operations.
  /// Bounds: [0s, 1d].
  final pulumi.Input<String> gracefulDecommissionTimeout;

  /// Fraction of average pending memory in the last cooldown period for which to
  /// remove workers. A scale-down factor of 1 will result in scaling down so that there
  /// is no available memory remaining after the update (more aggressive scaling).
  /// A scale-down factor of 0 disables removing workers, which can be beneficial for
  /// autoscaling a single job.
  /// Bounds: [0.0, 1.0].
  final pulumi.Input<double> scaleDownFactor;

  /// Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.
  /// For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must
  /// recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0
  /// means the autoscaler will scale down on any recommended change.
  /// Bounds: [0.0, 1.0]. Default: 0.0.
  final pulumi.Input<double>? scaleDownMinWorkerFraction;

  /// Fraction of average pending memory in the last cooldown period for which to
  /// add workers. A scale-up factor of 1.0 will result in scaling up so that there
  /// is no pending memory remaining after the update (more aggressive scaling).
  /// A scale-up factor closer to 0 will result in a smaller magnitude of scaling up
  /// (less aggressive scaling).
  /// Bounds: [0.0, 1.0].
  final pulumi.Input<double> scaleUpFactor;

  /// Minimum scale-up threshold as a fraction of total cluster size before scaling
  /// occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler
  /// must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of
  /// 0 means the autoscaler will scale up on any recommended change.
  /// Bounds: [0.0, 1.0]. Default: 0.0.
  final pulumi.Input<double>? scaleUpMinWorkerFraction;

  /// Creates a new [AutoscalingPolicyBasicAlgorithmYarnConfig].
  /// [gracefulDecommissionTimeout] Timeout for YARN graceful decommissioning of Node Managers. Specifies the
  /// [scaleDownFactor] Fraction of average pending memory in the last cooldown period for which to
  /// [scaleDownMinWorkerFraction] Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.
  /// [scaleUpFactor] Fraction of average pending memory in the last cooldown period for which to
  /// [scaleUpMinWorkerFraction] Minimum scale-up threshold as a fraction of total cluster size before scaling
  AutoscalingPolicyBasicAlgorithmYarnConfig({
    required this.gracefulDecommissionTimeout,
    required this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    required this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracefulDecommissionTimeout': gracefulDecommissionTimeout,
      'scaleDownFactor': scaleDownFactor,
      'scaleDownMinWorkerFraction': ?scaleDownMinWorkerFraction,
      'scaleUpFactor': scaleUpFactor,
      'scaleUpMinWorkerFraction': ?scaleUpMinWorkerFraction,
    };
  }

  factory AutoscalingPolicyBasicAlgorithmYarnConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AutoscalingPolicyBasicAlgorithmYarnConfig(
      gracefulDecommissionTimeout: pulumi.Input.fromValue(
        map['gracefulDecommissionTimeout'] as String,
      ),
      scaleDownFactor: pulumi.Input.fromValue(map['scaleDownFactor'] as double),
      scaleDownMinWorkerFraction: (() {
        final guardedValue = map['scaleDownMinWorkerFraction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      scaleUpFactor: pulumi.Input.fromValue(map['scaleUpFactor'] as double),
      scaleUpMinWorkerFraction: (() {
        final guardedValue = map['scaleUpMinWorkerFraction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}

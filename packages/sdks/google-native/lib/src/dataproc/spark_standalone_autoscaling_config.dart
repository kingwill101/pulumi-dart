// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Basic autoscaling configurations for Spark Standalone.
class SparkStandaloneAutoscalingConfig {
  /// Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to wait for spark worker to complete spark decommissioning tasks before forcefully removing workers. Only applicable to downscaling operations.Bounds: 0s, 1d.
  final pulumi.Input<String> gracefulDecommissionTimeout;
  /// Optional. Remove only idle workers when scaling down cluster
  final pulumi.Input<bool>? removeOnlyIdleWorkers;
  /// Fraction of required executors to remove from Spark Serverless clusters. A scale-down factor of 1.0 will result in scaling down so that there are no more executors for the Spark Job.(more aggressive scaling). A scale-down factor closer to 0 will result in a smaller magnitude of scaling donw (less aggressive scaling).Bounds: 0.0, 1.0.
  final pulumi.Input<double> scaleDownFactor;
  /// Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  final pulumi.Input<double>? scaleDownMinWorkerFraction;
  /// Fraction of required workers to add to Spark Standalone clusters. A scale-up factor of 1.0 will result in scaling up so that there are no more required workers for the Spark Job (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling).Bounds: 0.0, 1.0.
  final pulumi.Input<double> scaleUpFactor;
  /// Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  final pulumi.Input<double>? scaleUpMinWorkerFraction;

  /// Creates a new [SparkStandaloneAutoscalingConfig].
  /// [gracefulDecommissionTimeout] Timeout for Spark graceful decommissioning of spark workers. Specifies the duration to wait for spark worker to complete spark decommissioning tasks before forcefully removing workers. Only applicable to downscaling operations.Bounds: 0s, 1d.
  /// [removeOnlyIdleWorkers] Optional. Remove only idle workers when scaling down cluster
  /// [scaleDownFactor] Fraction of required executors to remove from Spark Serverless clusters. A scale-down factor of 1.0 will result in scaling down so that there are no more executors for the Spark Job.(more aggressive scaling). A scale-down factor closer to 0 will result in a smaller magnitude of scaling donw (less aggressive scaling).Bounds: 0.0, 1.0.
  /// [scaleDownMinWorkerFraction] Optional. Minimum scale-down threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0 means the autoscaler will scale down on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  /// [scaleUpFactor] Fraction of required workers to add to Spark Standalone clusters. A scale-up factor of 1.0 will result in scaling up so that there are no more required workers for the Spark Job (more aggressive scaling). A scale-up factor closer to 0 will result in a smaller magnitude of scaling up (less aggressive scaling).Bounds: 0.0, 1.0.
  /// [scaleUpMinWorkerFraction] Optional. Minimum scale-up threshold as a fraction of total cluster size before scaling occurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must recommend at least a 2-worker scale-up for the cluster to scale. A threshold of 0 means the autoscaler will scale up on any recommended change.Bounds: 0.0, 1.0. Default: 0.0.
  SparkStandaloneAutoscalingConfig({
    required this.gracefulDecommissionTimeout,
    this.removeOnlyIdleWorkers,
    required this.scaleDownFactor,
    this.scaleDownMinWorkerFraction,
    required this.scaleUpFactor,
    this.scaleUpMinWorkerFraction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gracefulDecommissionTimeout': gracefulDecommissionTimeout,
      'removeOnlyIdleWorkers': ?removeOnlyIdleWorkers,
      'scaleDownFactor': scaleDownFactor,
      'scaleDownMinWorkerFraction': ?scaleDownMinWorkerFraction,
      'scaleUpFactor': scaleUpFactor,
      'scaleUpMinWorkerFraction': ?scaleUpMinWorkerFraction,
    };
  }

  factory SparkStandaloneAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return SparkStandaloneAutoscalingConfig(
      gracefulDecommissionTimeout: pulumi.Input.fromValue(map['gracefulDecommissionTimeout'] as String),
      removeOnlyIdleWorkers: (() { final guardedValue = map['removeOnlyIdleWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scaleDownFactor: pulumi.Input.fromValue(map['scaleDownFactor'] as double),
      scaleDownMinWorkerFraction: (() { final guardedValue = map['scaleDownMinWorkerFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      scaleUpFactor: pulumi.Input.fromValue(map['scaleUpFactor'] as double),
      scaleUpMinWorkerFraction: (() { final guardedValue = map['scaleUpMinWorkerFraction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}


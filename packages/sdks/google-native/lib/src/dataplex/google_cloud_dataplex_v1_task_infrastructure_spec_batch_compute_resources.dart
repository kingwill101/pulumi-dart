// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Batch compute resources associated with the task.
class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources {
  /// Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2
  final pulumi.Input<int>? executorsCount;
  /// Optional. Max configurable executors. If max_executors_count &gt; executors_count, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. Default=1000
  final pulumi.Input<int>? maxExecutorsCount;

  /// Creates a new [GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources].
  /// [executorsCount] Optional. Total number of job executors. Executor Count should be between 2 and 100. Default=2
  /// [maxExecutorsCount] Optional. Max configurable executors. If max_executors_count &gt; executors_count, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. Default=1000
  const GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executorsCount': ?executorsCount,
      'maxExecutorsCount': ?maxExecutorsCount,
    };
  }

  factory GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources(
      executorsCount: (() { final guardedValue = map['executorsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxExecutorsCount: (() { final guardedValue = map['maxExecutorsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


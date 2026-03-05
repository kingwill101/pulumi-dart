// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSparkInfrastructureSpecBatch {
  /// Total number of job executors. Executor Count should be between 2 and 100. [Default=2]
  final pulumi.Input<int>? executorsCount;
  /// Max configurable executors. If maxExecutorsCount &gt; executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000]
  final pulumi.Input<int>? maxExecutorsCount;

  /// Creates a new [TaskSparkInfrastructureSpecBatch].
  /// [executorsCount] Total number of job executors. Executor Count should be between 2 and 100. [Default=2]
  /// [maxExecutorsCount] Max configurable executors. If maxExecutorsCount &gt; executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000]
  TaskSparkInfrastructureSpecBatch({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executorsCount': ?executorsCount,
      'maxExecutorsCount': ?maxExecutorsCount,
    };
  }

  factory TaskSparkInfrastructureSpecBatch.fromMap(Map<String, dynamic> map) {
    return TaskSparkInfrastructureSpecBatch(
      executorsCount: (() { final guardedValue = map['executorsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxExecutorsCount: (() { final guardedValue = map['maxExecutorsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


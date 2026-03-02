// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskNotebookInfrastructureSpecBatch {
  /// Total number of job executors. Executor Count should be between 2 and 100. [Default=2]
  final pulumi.Input<int>? executorsCount;
  /// Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000]
  final pulumi.Input<int>? maxExecutorsCount;

  /// Creates a new [TaskNotebookInfrastructureSpecBatch].
  /// [executorsCount] Total number of job executors. Executor Count should be between 2 and 100. [Default=2]
  /// [maxExecutorsCount] Max configurable executors. If maxExecutorsCount > executorsCount, then auto-scaling is enabled. Max Executor Count should be between 2 and 1000. [Default=1000]
  TaskNotebookInfrastructureSpecBatch({
    this.executorsCount,
    this.maxExecutorsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executorsCount': ?executorsCount,
      'maxExecutorsCount': ?maxExecutorsCount,
    };
  }

  factory TaskNotebookInfrastructureSpecBatch.fromMap(Map<String, dynamic> map) {
    return TaskNotebookInfrastructureSpecBatch(
      executorsCount: map['executorsCount'] == null ? null : (map['executorsCount']! as int).input(),
      maxExecutorsCount: map['maxExecutorsCount'] == null ? null : (map['maxExecutorsCount']! as int).input(),
    );
  }
}


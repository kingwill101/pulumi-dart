// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobScheduleTriggerConfig {
  /// Cron formatted repeating schedule of a Cron Job.
  final pulumi.Input<String> cronExpression;
  /// Number of parallel replicas of a job that can run at a given time.
  final pulumi.Input<int>? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final pulumi.Input<int>? replicaCompletionCount;

  /// Creates a new [JobScheduleTriggerConfig].
  /// [cronExpression] Cron formatted repeating schedule of a Cron Job.
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  JobScheduleTriggerConfig({
    required this.cronExpression,
    this.parallelism,
    this.replicaCompletionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': cronExpression,
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
    };
  }

  factory JobScheduleTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobScheduleTriggerConfig(
      cronExpression: (map['cronExpression'] as String).input(),
      parallelism: map['parallelism'] == null ? null : (map['parallelism'] as int).input(),
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : (map['replicaCompletionCount'] as int).input(),
    );
  }
}


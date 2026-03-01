// ignore_for_file: unused_element, unnecessary_cast


class JobScheduleTriggerConfig {
  /// Cron formatted repeating schedule of a Cron Job.
  final String cronExpression;
  /// Number of parallel replicas of a job that can run at a given time.
  final int? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final int? replicaCompletionCount;

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
      cronExpression: map['cronExpression'] as String,
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : map['replicaCompletionCount'] as int,
    );
  }
}


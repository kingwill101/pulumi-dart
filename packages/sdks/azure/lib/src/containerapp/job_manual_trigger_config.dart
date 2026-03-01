// ignore_for_file: unused_element, unnecessary_cast


class JobManualTriggerConfig {
  /// Number of parallel replicas of a job that can run at a given time.
  final int? parallelism;
  /// Minimum number of successful replica completions before overall job completion.
  final int? replicaCompletionCount;

  /// Creates a new [JobManualTriggerConfig].
  /// [parallelism] Number of parallel replicas of a job that can run at a given time.
  /// [replicaCompletionCount] Minimum number of successful replica completions before overall job completion.
  JobManualTriggerConfig({
    this.parallelism,
    this.replicaCompletionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': ?parallelism,
      'replicaCompletionCount': ?replicaCompletionCount,
    };
  }

  factory JobManualTriggerConfig.fromMap(Map<String, dynamic> map) {
    return JobManualTriggerConfig(
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      replicaCompletionCount: map['replicaCompletionCount'] == null ? null : map['replicaCompletionCount'] as int,
    );
  }
}


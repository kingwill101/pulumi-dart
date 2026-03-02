// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatusResponse {
  /// Gets the number of times this job has executed.
  final pulumi.Input<int> executionCount;
  /// Gets the number of times this job has failed.
  final pulumi.Input<int> failureCount;
  /// Gets the number of faulted occurrences (occurrences that were retried and failed as many times as the retry policy states).
  final pulumi.Input<int> faultedCount;
  /// Gets the time the last occurrence executed in ISO-8601 format.  Could be empty if job has not run yet.
  final pulumi.Input<String> lastExecutionTime;
  /// Gets the time of the next occurrence in ISO-8601 format. Could be empty if the job is completed.
  final pulumi.Input<String> nextExecutionTime;

  /// Creates a new [JobStatusResponse].
  /// [executionCount] Gets the number of times this job has executed.
  /// [failureCount] Gets the number of times this job has failed.
  /// [faultedCount] Gets the number of faulted occurrences (occurrences that were retried and failed as many times as the retry policy states).
  /// [lastExecutionTime] Gets the time the last occurrence executed in ISO-8601 format.  Could be empty if job has not run yet.
  /// [nextExecutionTime] Gets the time of the next occurrence in ISO-8601 format. Could be empty if the job is completed.
  JobStatusResponse({
    required this.executionCount,
    required this.failureCount,
    required this.faultedCount,
    required this.lastExecutionTime,
    required this.nextExecutionTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionCount': executionCount,
      'failureCount': failureCount,
      'faultedCount': faultedCount,
      'lastExecutionTime': lastExecutionTime,
      'nextExecutionTime': nextExecutionTime,
    };
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      executionCount: (map['executionCount'] as int).input(),
      failureCount: (map['failureCount'] as int).input(),
      faultedCount: (map['faultedCount'] as int).input(),
      lastExecutionTime: (map['lastExecutionTime'] as String).input(),
      nextExecutionTime: (map['nextExecutionTime'] as String).input(),
    );
  }
}


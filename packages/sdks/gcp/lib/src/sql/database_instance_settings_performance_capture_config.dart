// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsPerformanceCaptureConfig {
  /// The minimum percentage of CPU utilization that triggers the performance capture. Valid range is 10 to 99. 0 disables the check.
  final pulumi.Input<int?>? cpuUtilizationThresholdPercent;
  /// Enable or disable the Performance Capture.
  final pulumi.Input<bool?>? enabled;
  /// The minimum number of undo log entries in the history list length that triggers the performance capture. Valid range is 10000 to 10000000. 0 disables the check.
  final pulumi.Input<int?>? historyListLengthThresholdCount;
  /// The minimum percentage of memory usage that triggers the performance capture. Valid range is 10 to 99. 0 disables the check.
  final pulumi.Input<int?>? memoryUsageThresholdPercent;
  /// The minimum number of consecutive readings above threshold that triggers instance state capture.
  final pulumi.Input<int?>? probeThreshold;
  /// The time interval in seconds between any two probes.
  final pulumi.Input<int?>? probingIntervalSeconds;
  /// The minimum number of server threads running to trigger the capture on primary.
  final pulumi.Input<int?>? runningThreadsThreshold;
  /// The minimum number of seconds replica must be lagging behind primary to trigger capture on replica.
  final pulumi.Input<int?>? secondsBehindSourceThreshold;
  /// The minimum number of semaphore waits that triggers the performance capture. Valid range is 10 to 10000. 0 disables the check.
  final pulumi.Input<int?>? semaphoreWaitThresholdCount;
  /// The amount of time in seconds that a transaction needs to have been open before getting recorded.
  final pulumi.Input<int?>? transactionDurationThreshold;
  /// A list of users to exclude from transaction termination. Entries can be in the format 'user@host' or just 'user'.
  final pulumi.Input<List<String>?>? transactionKillExcludedUserHosts;
  /// The amount of time in seconds that a transaction needs to have been open before the watcher starts terminating it. Valid range is 60 to 604800. 0 disables termination.
  final pulumi.Input<int?>? transactionKillThresholdSeconds;
  /// Determines which transactions are allowed to be terminated when they exceed transaction_kill_threshold_seconds. Possible values are: "TRANSACTION_KILL_TYPE_UNSPECIFIED", "READ_ONLY_TRANSACTIONS", "ALL_TRANSACTIONS".
  final pulumi.Input<String?>? transactionKillType;
  /// The minimum number of transactions in lock wait state that triggers the performance capture. Valid range is 10 to 10000. 0 disables the check.
  final pulumi.Input<int?>? transactionLockWaitThresholdCount;

  /// Creates a new [DatabaseInstanceSettingsPerformanceCaptureConfig].
  /// [cpuUtilizationThresholdPercent] The minimum percentage of CPU utilization that triggers the performance capture. Valid range is 10 to 99. 0 disables the check.
  /// [enabled] Enable or disable the Performance Capture.
  /// [historyListLengthThresholdCount] The minimum number of undo log entries in the history list length that triggers the performance capture. Valid range is 10000 to 10000000. 0 disables the check.
  /// [memoryUsageThresholdPercent] The minimum percentage of memory usage that triggers the performance capture. Valid range is 10 to 99. 0 disables the check.
  /// [probeThreshold] The minimum number of consecutive readings above threshold that triggers instance state capture.
  /// [probingIntervalSeconds] The time interval in seconds between any two probes.
  /// [runningThreadsThreshold] The minimum number of server threads running to trigger the capture on primary.
  /// [secondsBehindSourceThreshold] The minimum number of seconds replica must be lagging behind primary to trigger capture on replica.
  /// [semaphoreWaitThresholdCount] The minimum number of semaphore waits that triggers the performance capture. Valid range is 10 to 10000. 0 disables the check.
  /// [transactionDurationThreshold] The amount of time in seconds that a transaction needs to have been open before getting recorded.
  /// [transactionKillExcludedUserHosts] A list of users to exclude from transaction termination. Entries can be in the format 'user@host' or just 'user'.
  /// [transactionKillThresholdSeconds] The amount of time in seconds that a transaction needs to have been open before the watcher starts terminating it. Valid range is 60 to 604800. 0 disables termination.
  /// [transactionKillType] Determines which transactions are allowed to be terminated when they exceed transaction_kill_threshold_seconds. Possible values are: "TRANSACTION_KILL_TYPE_UNSPECIFIED", "READ_ONLY_TRANSACTIONS", "ALL_TRANSACTIONS".
  /// [transactionLockWaitThresholdCount] The minimum number of transactions in lock wait state that triggers the performance capture. Valid range is 10 to 10000. 0 disables the check.
  const DatabaseInstanceSettingsPerformanceCaptureConfig({
    this.cpuUtilizationThresholdPercent,
    this.enabled,
    this.historyListLengthThresholdCount,
    this.memoryUsageThresholdPercent,
    this.probeThreshold,
    this.probingIntervalSeconds,
    this.runningThreadsThreshold,
    this.secondsBehindSourceThreshold,
    this.semaphoreWaitThresholdCount,
    this.transactionDurationThreshold,
    this.transactionKillExcludedUserHosts,
    this.transactionKillThresholdSeconds,
    this.transactionKillType,
    this.transactionLockWaitThresholdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuUtilizationThresholdPercent': ?cpuUtilizationThresholdPercent,
      'enabled': ?enabled,
      'historyListLengthThresholdCount': ?historyListLengthThresholdCount,
      'memoryUsageThresholdPercent': ?memoryUsageThresholdPercent,
      'probeThreshold': ?probeThreshold,
      'probingIntervalSeconds': ?probingIntervalSeconds,
      'runningThreadsThreshold': ?runningThreadsThreshold,
      'secondsBehindSourceThreshold': ?secondsBehindSourceThreshold,
      'semaphoreWaitThresholdCount': ?semaphoreWaitThresholdCount,
      'transactionDurationThreshold': ?transactionDurationThreshold,
      'transactionKillExcludedUserHosts': ?transactionKillExcludedUserHosts,
      'transactionKillThresholdSeconds': ?transactionKillThresholdSeconds,
      'transactionKillType': ?transactionKillType,
      'transactionLockWaitThresholdCount': ?transactionLockWaitThresholdCount,
    };
  }

  factory DatabaseInstanceSettingsPerformanceCaptureConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsPerformanceCaptureConfig(
      cpuUtilizationThresholdPercent: (() { final guardedValue = map['cpuUtilizationThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      historyListLengthThresholdCount: (() { final guardedValue = map['historyListLengthThresholdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memoryUsageThresholdPercent: (() { final guardedValue = map['memoryUsageThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      probeThreshold: (() { final guardedValue = map['probeThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      probingIntervalSeconds: (() { final guardedValue = map['probingIntervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      runningThreadsThreshold: (() { final guardedValue = map['runningThreadsThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      secondsBehindSourceThreshold: (() { final guardedValue = map['secondsBehindSourceThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      semaphoreWaitThresholdCount: (() { final guardedValue = map['semaphoreWaitThresholdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      transactionDurationThreshold: (() { final guardedValue = map['transactionDurationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      transactionKillExcludedUserHosts: (() { final guardedValue = map['transactionKillExcludedUserHosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transactionKillThresholdSeconds: (() { final guardedValue = map['transactionKillThresholdSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      transactionKillType: (() { final guardedValue = map['transactionKillType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transactionLockWaitThresholdCount: (() { final guardedValue = map['transactionLockWaitThresholdCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

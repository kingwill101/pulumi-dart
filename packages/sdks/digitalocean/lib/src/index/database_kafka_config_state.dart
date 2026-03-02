// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseKafkaConfig resources.
class DatabaseKafkaConfigState {
  /// Enable auto creation of topics.
  final pulumi.Input<bool>? autoCreateTopicsEnable;
  /// The ID of the target Kafka cluster.
  final pulumi.Input<String>? clusterId;
  /// The amount of time, in milliseconds, the group coordinator will wait for more consumers to join a new group before performing the first rebalance. A longer delay means potentially fewer rebalances, but increases the time until processing begins. The default value for this is 3 seconds. During development and testing it might be desirable to set this to 0 in order to not delay test execution time.
  final pulumi.Input<int>? groupInitialRebalanceDelayMs;
  /// The maximum allowed session timeout for registered consumers. Longer timeouts give consumers more time to process messages in between heartbeats at the cost of a longer time to detect failures.
  final pulumi.Input<int>? groupMaxSessionTimeoutMs;
  /// The minimum allowed session timeout for registered consumers. Longer timeouts give consumers more time to process messages in between heartbeats at the cost of a longer time to detect failures.
  final pulumi.Input<int>? groupMinSessionTimeoutMs;
  /// How long are delete records retained?
  final pulumi.Input<int>? logCleanerDeleteRetentionMs;
  /// The minimum time a message will remain uncompacted in the log. Only applicable for logs that are being compacted.
  final pulumi.Input<String>? logCleanerMinCompactionLagMs;
  /// The maximum time in ms that a message in any topic is kept in memory before flushed to disk. If not set, the value in log.flush.scheduler.interval.ms is used.
  final pulumi.Input<String>? logFlushIntervalMs;
  /// The interval with which Kafka adds an entry to the offset index.
  final pulumi.Input<int>? logIndexIntervalBytes;
  /// This configuration controls whether down-conversion of message formats is enabled to satisfy consume requests.
  final pulumi.Input<bool>? logMessageDownconversionEnable;
  /// The maximum difference allowed between the timestamp when a broker receives a message and the timestamp specified in the message.
  final pulumi.Input<String>? logMessageTimestampDifferenceMaxMs;
  /// Controls whether to preallocate a file when creating a new segment.
  final pulumi.Input<bool>? logPreallocate;
  /// The maximum size of the log before deleting messages.
  final pulumi.Input<String>? logRetentionBytes;
  /// The number of hours to keep a log file before deleting it.
  final pulumi.Input<int>? logRetentionHours;
  /// The number of milliseconds to keep a log file before deleting it (in milliseconds), If not set, the value in log.retention.minutes is used. If set to -1, no time limit is applied.
  final pulumi.Input<String>? logRetentionMs;
  /// The maximum jitter to subtract from logRollTimeMillis (in milliseconds). If not set, the value in log.roll.jitter.hours is used.
  final pulumi.Input<String>? logRollJitterMs;
  /// The amount of time to wait before deleting a file from the filesystem.
  final pulumi.Input<int>? logSegmentDeleteDelayMs;
  /// The maximum size of message that the server can receive.
  final pulumi.Input<int>? messageMaxBytes;

  /// Creates a new [DatabaseKafkaConfigState].
  /// [autoCreateTopicsEnable] Enable auto creation of topics.
  /// [clusterId] The ID of the target Kafka cluster.
  /// [groupInitialRebalanceDelayMs] The amount of time, in milliseconds, the group coordinator will wait for more consumers to join a new group before performing the first rebalance. A longer delay means potentially fewer rebalances, but increases the time until processing begins. The default value for this is 3 seconds. During development and testing it might be desirable to set this to 0 in order to not delay test execution time.
  /// [groupMaxSessionTimeoutMs] The maximum allowed session timeout for registered consumers. Longer timeouts give consumers more time to process messages in between heartbeats at the cost of a longer time to detect failures.
  /// [groupMinSessionTimeoutMs] The minimum allowed session timeout for registered consumers. Longer timeouts give consumers more time to process messages in between heartbeats at the cost of a longer time to detect failures.
  /// [logCleanerDeleteRetentionMs] How long are delete records retained?
  /// [logCleanerMinCompactionLagMs] The minimum time a message will remain uncompacted in the log. Only applicable for logs that are being compacted.
  /// [logFlushIntervalMs] The maximum time in ms that a message in any topic is kept in memory before flushed to disk. If not set, the value in log.flush.scheduler.interval.ms is used.
  /// [logIndexIntervalBytes] The interval with which Kafka adds an entry to the offset index.
  /// [logMessageDownconversionEnable] This configuration controls whether down-conversion of message formats is enabled to satisfy consume requests.
  /// [logMessageTimestampDifferenceMaxMs] The maximum difference allowed between the timestamp when a broker receives a message and the timestamp specified in the message.
  /// [logPreallocate] Controls whether to preallocate a file when creating a new segment.
  /// [logRetentionBytes] The maximum size of the log before deleting messages.
  /// [logRetentionHours] The number of hours to keep a log file before deleting it.
  /// [logRetentionMs] The number of milliseconds to keep a log file before deleting it (in milliseconds), If not set, the value in log.retention.minutes is used. If set to -1, no time limit is applied.
  /// [logRollJitterMs] The maximum jitter to subtract from logRollTimeMillis (in milliseconds). If not set, the value in log.roll.jitter.hours is used.
  /// [logSegmentDeleteDelayMs] The amount of time to wait before deleting a file from the filesystem.
  /// [messageMaxBytes] The maximum size of message that the server can receive.
  DatabaseKafkaConfigState({
    this.autoCreateTopicsEnable,
    this.clusterId,
    this.groupInitialRebalanceDelayMs,
    this.groupMaxSessionTimeoutMs,
    this.groupMinSessionTimeoutMs,
    this.logCleanerDeleteRetentionMs,
    this.logCleanerMinCompactionLagMs,
    this.logFlushIntervalMs,
    this.logIndexIntervalBytes,
    this.logMessageDownconversionEnable,
    this.logMessageTimestampDifferenceMaxMs,
    this.logPreallocate,
    this.logRetentionBytes,
    this.logRetentionHours,
    this.logRetentionMs,
    this.logRollJitterMs,
    this.logSegmentDeleteDelayMs,
    this.messageMaxBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateTopicsEnable': ?autoCreateTopicsEnable,
      'clusterId': ?clusterId,
      'groupInitialRebalanceDelayMs': ?groupInitialRebalanceDelayMs,
      'groupMaxSessionTimeoutMs': ?groupMaxSessionTimeoutMs,
      'groupMinSessionTimeoutMs': ?groupMinSessionTimeoutMs,
      'logCleanerDeleteRetentionMs': ?logCleanerDeleteRetentionMs,
      'logCleanerMinCompactionLagMs': ?logCleanerMinCompactionLagMs,
      'logFlushIntervalMs': ?logFlushIntervalMs,
      'logIndexIntervalBytes': ?logIndexIntervalBytes,
      'logMessageDownconversionEnable': ?logMessageDownconversionEnable,
      'logMessageTimestampDifferenceMaxMs': ?logMessageTimestampDifferenceMaxMs,
      'logPreallocate': ?logPreallocate,
      'logRetentionBytes': ?logRetentionBytes,
      'logRetentionHours': ?logRetentionHours,
      'logRetentionMs': ?logRetentionMs,
      'logRollJitterMs': ?logRollJitterMs,
      'logSegmentDeleteDelayMs': ?logSegmentDeleteDelayMs,
      'messageMaxBytes': ?messageMaxBytes,
    };
  }

  factory DatabaseKafkaConfigState.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaConfigState(
      autoCreateTopicsEnable: map['autoCreateTopicsEnable'] == null ? null : (map['autoCreateTopicsEnable'] as bool).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      groupInitialRebalanceDelayMs: map['groupInitialRebalanceDelayMs'] == null ? null : (map['groupInitialRebalanceDelayMs'] as int).input(),
      groupMaxSessionTimeoutMs: map['groupMaxSessionTimeoutMs'] == null ? null : (map['groupMaxSessionTimeoutMs'] as int).input(),
      groupMinSessionTimeoutMs: map['groupMinSessionTimeoutMs'] == null ? null : (map['groupMinSessionTimeoutMs'] as int).input(),
      logCleanerDeleteRetentionMs: map['logCleanerDeleteRetentionMs'] == null ? null : (map['logCleanerDeleteRetentionMs'] as int).input(),
      logCleanerMinCompactionLagMs: map['logCleanerMinCompactionLagMs'] == null ? null : (map['logCleanerMinCompactionLagMs'] as String).input(),
      logFlushIntervalMs: map['logFlushIntervalMs'] == null ? null : (map['logFlushIntervalMs'] as String).input(),
      logIndexIntervalBytes: map['logIndexIntervalBytes'] == null ? null : (map['logIndexIntervalBytes'] as int).input(),
      logMessageDownconversionEnable: map['logMessageDownconversionEnable'] == null ? null : (map['logMessageDownconversionEnable'] as bool).input(),
      logMessageTimestampDifferenceMaxMs: map['logMessageTimestampDifferenceMaxMs'] == null ? null : (map['logMessageTimestampDifferenceMaxMs'] as String).input(),
      logPreallocate: map['logPreallocate'] == null ? null : (map['logPreallocate'] as bool).input(),
      logRetentionBytes: map['logRetentionBytes'] == null ? null : (map['logRetentionBytes'] as String).input(),
      logRetentionHours: map['logRetentionHours'] == null ? null : (map['logRetentionHours'] as int).input(),
      logRetentionMs: map['logRetentionMs'] == null ? null : (map['logRetentionMs'] as String).input(),
      logRollJitterMs: map['logRollJitterMs'] == null ? null : (map['logRollJitterMs'] as String).input(),
      logSegmentDeleteDelayMs: map['logSegmentDeleteDelayMs'] == null ? null : (map['logSegmentDeleteDelayMs'] as int).input(),
      messageMaxBytes: map['messageMaxBytes'] == null ? null : (map['messageMaxBytes'] as int).input(),
    );
  }
}


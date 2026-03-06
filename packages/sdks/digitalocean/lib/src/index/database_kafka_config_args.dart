// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_kafka_config_database_kafka_config_args_doc}
/// The set of arguments for DatabaseKafkaConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_kafka_config_database_kafka_config_args_doc}
class DatabaseKafkaConfigArgs {
  /// Enable auto creation of topics.
  final pulumi.Input<bool>? autoCreateTopicsEnable;
  /// The ID of the target Kafka cluster.
  final pulumi.Input<String> clusterId;
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

  /// Creates a new [DatabaseKafkaConfigArgs].
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
  const DatabaseKafkaConfigArgs({
    this.autoCreateTopicsEnable,
    required this.clusterId,
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
      'clusterId': clusterId,
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

  factory DatabaseKafkaConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaConfigArgs(
      autoCreateTopicsEnable: (() { final guardedValue = map['autoCreateTopicsEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      groupInitialRebalanceDelayMs: (() { final guardedValue = map['groupInitialRebalanceDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      groupMaxSessionTimeoutMs: (() { final guardedValue = map['groupMaxSessionTimeoutMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      groupMinSessionTimeoutMs: (() { final guardedValue = map['groupMinSessionTimeoutMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logCleanerDeleteRetentionMs: (() { final guardedValue = map['logCleanerDeleteRetentionMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logCleanerMinCompactionLagMs: (() { final guardedValue = map['logCleanerMinCompactionLagMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFlushIntervalMs: (() { final guardedValue = map['logFlushIntervalMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logIndexIntervalBytes: (() { final guardedValue = map['logIndexIntervalBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logMessageDownconversionEnable: (() { final guardedValue = map['logMessageDownconversionEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logMessageTimestampDifferenceMaxMs: (() { final guardedValue = map['logMessageTimestampDifferenceMaxMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logPreallocate: (() { final guardedValue = map['logPreallocate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logRetentionBytes: (() { final guardedValue = map['logRetentionBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logRetentionHours: (() { final guardedValue = map['logRetentionHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      logRetentionMs: (() { final guardedValue = map['logRetentionMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logRollJitterMs: (() { final guardedValue = map['logRollJitterMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logSegmentDeleteDelayMs: (() { final guardedValue = map['logSegmentDeleteDelayMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      messageMaxBytes: (() { final guardedValue = map['messageMaxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


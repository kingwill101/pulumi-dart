// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseKafkaTopicConfig {
  /// The topic cleanup policy that describes whether messages should be deleted, compacted, or both when retention policies are violated.
  /// This may be one of "delete", "compact", or "compact_delete".
  final pulumi.Input<String>? cleanupPolicy;
  /// The topic compression codecs used for a given topic.
  /// This may be one of "uncompressed", "gzip", "snappy", "lz4", "producer", "zstd". "uncompressed" indicates that there is no compression and "producer" retains the original compression codec set by the producer.
  final pulumi.Input<String>? compressionType;
  /// The amount of time, in ms, that deleted records are retained.
  final pulumi.Input<String>? deleteRetentionMs;
  /// The amount of time, in ms, to wait before deleting a topic log segment from the filesystem.
  final pulumi.Input<String>? fileDeleteDelayMs;
  /// The number of messages accumulated on a topic partition before they are flushed to disk.
  final pulumi.Input<String>? flushMessages;
  /// The maximum time, in ms, that a topic is kept in memory before being flushed to disk.
  final pulumi.Input<String>? flushMs;
  /// The interval, in bytes, in which entries are added to the offset index.
  final pulumi.Input<String>? indexIntervalBytes;
  /// The maximum time, in ms, that a particular message will remain uncompacted. This will not apply if the `compression_type` is set to "uncompressed" or it is set to `producer` and the producer is not using compression.
  final pulumi.Input<String>? maxCompactionLagMs;
  /// The maximum size, in bytes, of a message.
  final pulumi.Input<String>? maxMessageBytes;
  /// Determines whether down-conversion of message formats for consumers is enabled.
  final pulumi.Input<bool>? messageDownConversionEnable;
  /// The version of the inter-broker protocol that will be used. This may be one of "0.8.0", "0.8.1", "0.8.2", "0.9.0", "0.10.0", "0.10.0-IV0", "0.10.0-IV1", "0.10.1", "0.10.1-IV0", "0.10.1-IV1", "0.10.1-IV2", "0.10.2", "0.10.2-IV0", "0.11.0", "0.11.0-IV0", "0.11.0-IV1", "0.11.0-IV2", "1.0", "1.0-IV0", "1.1", "1.1-IV0", "2.0", "2.0-IV0", "2.0-IV1", "2.1", "2.1-IV0", "2.1-IV1", "2.1-IV2", "2.2", "2.2-IV0", "2.2-IV1", "2.3", "2.3-IV0", "2.3-IV1", "2.4", "2.4-IV0", "2.4-IV1", "2.5", "2.5-IV0", "2.6", "2.6-IV0", "2.7", "2.7-IV0", "2.7-IV1", "2.7-IV2", "2.8", "2.8-IV0", "2.8-IV1", "3.0", "3.0-IV0", "3.0-IV1", "3.1", "3.1-IV0", "3.2", "3.2-IV0", "3.3", "3.3-IV0", "3.3-IV1", "3.3-IV2", "3.3-IV3", "3.4", "3.4-IV0", "3.5", "3.5-IV0", "3.5-IV1", "3.5-IV2", "3.6", "3.6-IV0", "3.6-IV1", "3.6-IV2".
  final pulumi.Input<String>? messageFormatVersion;
  /// The maximum difference, in ms, between the timestamp specific in a message and when the broker receives the message.
  final pulumi.Input<String>? messageTimestampDifferenceMaxMs;
  /// Specifies which timestamp to use for the message. This may be one of "create_time" or "log_append_time".
  final pulumi.Input<String>? messageTimestampType;
  /// A scale between 0.0 and 1.0 which controls the frequency of the compactor. Larger values mean more frequent compactions. This is often paired with `max_compaction_lag_ms` to control the compactor frequency.
  final pulumi.Input<double>? minCleanableDirtyRatio;
  final pulumi.Input<String>? minCompactionLagMs;
  /// The number of replicas that must acknowledge a write before it is considered successful. -1 is a special setting to indicate that all nodes must ack a message before a write is considered successful. Default is 1, indicating at least 1 replica must acknowledge a write to be considered successful.
  final pulumi.Input<int>? minInsyncReplicas;
  /// Determines whether to preallocate a file on disk when creating a new log segment within a topic.
  final pulumi.Input<bool>? preallocate;
  /// The maximum size, in bytes, of a topic before messages are deleted. -1 is a special setting indicating that this setting has no limit.
  final pulumi.Input<String>? retentionBytes;
  /// The maximum time, in ms, that a topic log file is retained before deleting it. -1 is a special setting indicating that this setting has no limit.
  final pulumi.Input<String>? retentionMs;
  /// The maximum size, in bytes, of a single topic log file.
  final pulumi.Input<String>? segmentBytes;
  /// The maximum size, in bytes, of the offset index.
  final pulumi.Input<String>? segmentIndexBytes;
  /// The maximum time, in ms, subtracted from the scheduled segment disk flush time to avoid the thundering herd problem for segment flushing.
  final pulumi.Input<String>? segmentJitterMs;
  /// The maximum time, in ms, before the topic log will flush to disk.
  final pulumi.Input<String>? segmentMs;

  /// Creates a new [DatabaseKafkaTopicConfig].
  /// [cleanupPolicy] The topic cleanup policy that describes whether messages should be deleted, compacted, or both when retention policies are violated.
  /// [compressionType] The topic compression codecs used for a given topic.
  /// [deleteRetentionMs] The amount of time, in ms, that deleted records are retained.
  /// [fileDeleteDelayMs] The amount of time, in ms, to wait before deleting a topic log segment from the filesystem.
  /// [flushMessages] The number of messages accumulated on a topic partition before they are flushed to disk.
  /// [flushMs] The maximum time, in ms, that a topic is kept in memory before being flushed to disk.
  /// [indexIntervalBytes] The interval, in bytes, in which entries are added to the offset index.
  /// [maxCompactionLagMs] The maximum time, in ms, that a particular message will remain uncompacted. This will not apply if the `compression_type` is set to "uncompressed" or it is set to `producer` and the producer is not using compression.
  /// [maxMessageBytes] The maximum size, in bytes, of a message.
  /// [messageDownConversionEnable] Determines whether down-conversion of message formats for consumers is enabled.
  /// [messageFormatVersion] The version of the inter-broker protocol that will be used. This may be one of "0.8.0", "0.8.1", "0.8.2", "0.9.0", "0.10.0", "0.10.0-IV0", "0.10.0-IV1", "0.10.1", "0.10.1-IV0", "0.10.1-IV1", "0.10.1-IV2", "0.10.2", "0.10.2-IV0", "0.11.0", "0.11.0-IV0", "0.11.0-IV1", "0.11.0-IV2", "1.0", "1.0-IV0", "1.1", "1.1-IV0", "2.0", "2.0-IV0", "2.0-IV1", "2.1", "2.1-IV0", "2.1-IV1", "2.1-IV2", "2.2", "2.2-IV0", "2.2-IV1", "2.3", "2.3-IV0", "2.3-IV1", "2.4", "2.4-IV0", "2.4-IV1", "2.5", "2.5-IV0", "2.6", "2.6-IV0", "2.7", "2.7-IV0", "2.7-IV1", "2.7-IV2", "2.8", "2.8-IV0", "2.8-IV1", "3.0", "3.0-IV0", "3.0-IV1", "3.1", "3.1-IV0", "3.2", "3.2-IV0", "3.3", "3.3-IV0", "3.3-IV1", "3.3-IV2", "3.3-IV3", "3.4", "3.4-IV0", "3.5", "3.5-IV0", "3.5-IV1", "3.5-IV2", "3.6", "3.6-IV0", "3.6-IV1", "3.6-IV2".
  /// [messageTimestampDifferenceMaxMs] The maximum difference, in ms, between the timestamp specific in a message and when the broker receives the message.
  /// [messageTimestampType] Specifies which timestamp to use for the message. This may be one of "create_time" or "log_append_time".
  /// [minCleanableDirtyRatio] A scale between 0.0 and 1.0 which controls the frequency of the compactor. Larger values mean more frequent compactions. This is often paired with `max_compaction_lag_ms` to control the compactor frequency.
  /// [minCompactionLagMs] Optional.
  /// [minInsyncReplicas] The number of replicas that must acknowledge a write before it is considered successful. -1 is a special setting to indicate that all nodes must ack a message before a write is considered successful. Default is 1, indicating at least 1 replica must acknowledge a write to be considered successful.
  /// [preallocate] Determines whether to preallocate a file on disk when creating a new log segment within a topic.
  /// [retentionBytes] The maximum size, in bytes, of a topic before messages are deleted. -1 is a special setting indicating that this setting has no limit.
  /// [retentionMs] The maximum time, in ms, that a topic log file is retained before deleting it. -1 is a special setting indicating that this setting has no limit.
  /// [segmentBytes] The maximum size, in bytes, of a single topic log file.
  /// [segmentIndexBytes] The maximum size, in bytes, of the offset index.
  /// [segmentJitterMs] The maximum time, in ms, subtracted from the scheduled segment disk flush time to avoid the thundering herd problem for segment flushing.
  /// [segmentMs] The maximum time, in ms, before the topic log will flush to disk.
  DatabaseKafkaTopicConfig({
    this.cleanupPolicy,
    this.compressionType,
    this.deleteRetentionMs,
    this.fileDeleteDelayMs,
    this.flushMessages,
    this.flushMs,
    this.indexIntervalBytes,
    this.maxCompactionLagMs,
    this.maxMessageBytes,
    this.messageDownConversionEnable,
    this.messageFormatVersion,
    this.messageTimestampDifferenceMaxMs,
    this.messageTimestampType,
    this.minCleanableDirtyRatio,
    this.minCompactionLagMs,
    this.minInsyncReplicas,
    this.preallocate,
    this.retentionBytes,
    this.retentionMs,
    this.segmentBytes,
    this.segmentIndexBytes,
    this.segmentJitterMs,
    this.segmentMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicy': ?cleanupPolicy,
      'compressionType': ?compressionType,
      'deleteRetentionMs': ?deleteRetentionMs,
      'fileDeleteDelayMs': ?fileDeleteDelayMs,
      'flushMessages': ?flushMessages,
      'flushMs': ?flushMs,
      'indexIntervalBytes': ?indexIntervalBytes,
      'maxCompactionLagMs': ?maxCompactionLagMs,
      'maxMessageBytes': ?maxMessageBytes,
      'messageDownConversionEnable': ?messageDownConversionEnable,
      'messageFormatVersion': ?messageFormatVersion,
      'messageTimestampDifferenceMaxMs': ?messageTimestampDifferenceMaxMs,
      'messageTimestampType': ?messageTimestampType,
      'minCleanableDirtyRatio': ?minCleanableDirtyRatio,
      'minCompactionLagMs': ?minCompactionLagMs,
      'minInsyncReplicas': ?minInsyncReplicas,
      'preallocate': ?preallocate,
      'retentionBytes': ?retentionBytes,
      'retentionMs': ?retentionMs,
      'segmentBytes': ?segmentBytes,
      'segmentIndexBytes': ?segmentIndexBytes,
      'segmentJitterMs': ?segmentJitterMs,
      'segmentMs': ?segmentMs,
    };
  }

  factory DatabaseKafkaTopicConfig.fromMap(Map<String, dynamic> map) {
    return DatabaseKafkaTopicConfig(
      cleanupPolicy: map['cleanupPolicy'] == null ? null : (map['cleanupPolicy']! as String).input(),
      compressionType: map['compressionType'] == null ? null : (map['compressionType']! as String).input(),
      deleteRetentionMs: map['deleteRetentionMs'] == null ? null : (map['deleteRetentionMs']! as String).input(),
      fileDeleteDelayMs: map['fileDeleteDelayMs'] == null ? null : (map['fileDeleteDelayMs']! as String).input(),
      flushMessages: map['flushMessages'] == null ? null : (map['flushMessages']! as String).input(),
      flushMs: map['flushMs'] == null ? null : (map['flushMs']! as String).input(),
      indexIntervalBytes: map['indexIntervalBytes'] == null ? null : (map['indexIntervalBytes']! as String).input(),
      maxCompactionLagMs: map['maxCompactionLagMs'] == null ? null : (map['maxCompactionLagMs']! as String).input(),
      maxMessageBytes: map['maxMessageBytes'] == null ? null : (map['maxMessageBytes']! as String).input(),
      messageDownConversionEnable: map['messageDownConversionEnable'] == null ? null : (map['messageDownConversionEnable']! as bool).input(),
      messageFormatVersion: map['messageFormatVersion'] == null ? null : (map['messageFormatVersion']! as String).input(),
      messageTimestampDifferenceMaxMs: map['messageTimestampDifferenceMaxMs'] == null ? null : (map['messageTimestampDifferenceMaxMs']! as String).input(),
      messageTimestampType: map['messageTimestampType'] == null ? null : (map['messageTimestampType']! as String).input(),
      minCleanableDirtyRatio: map['minCleanableDirtyRatio'] == null ? null : (map['minCleanableDirtyRatio']! as double).input(),
      minCompactionLagMs: map['minCompactionLagMs'] == null ? null : (map['minCompactionLagMs']! as String).input(),
      minInsyncReplicas: map['minInsyncReplicas'] == null ? null : (map['minInsyncReplicas']! as int).input(),
      preallocate: map['preallocate'] == null ? null : (map['preallocate']! as bool).input(),
      retentionBytes: map['retentionBytes'] == null ? null : (map['retentionBytes']! as String).input(),
      retentionMs: map['retentionMs'] == null ? null : (map['retentionMs']! as String).input(),
      segmentBytes: map['segmentBytes'] == null ? null : (map['segmentBytes']! as String).input(),
      segmentIndexBytes: map['segmentIndexBytes'] == null ? null : (map['segmentIndexBytes']! as String).input(),
      segmentJitterMs: map['segmentJitterMs'] == null ? null : (map['segmentJitterMs']! as String).input(),
      segmentMs: map['segmentMs'] == null ? null : (map['segmentMs']! as String).input(),
    );
  }
}


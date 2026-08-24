// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueConsumerSettings {
  /// The maximum number of messages to include in a batch.
  final pulumi.Input<double?>? batchSize;
  /// Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
  final pulumi.Input<double?>? maxConcurrency;
  /// The maximum number of retries
  final pulumi.Input<double?>? maxRetries;
  /// The number of milliseconds to wait for a batch to fill up before attempting to deliver it
  final pulumi.Input<double?>? maxWaitTimeMs;
  /// The number of seconds to delay before making the message available for another attempt.
  final pulumi.Input<double?>? retryDelay;
  /// The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
  final pulumi.Input<double?>? visibilityTimeoutMs;

  /// Creates a new [QueueConsumerSettings].
  /// [batchSize] The maximum number of messages to include in a batch.
  /// [maxConcurrency] Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
  /// [maxRetries] The maximum number of retries
  /// [maxWaitTimeMs] The number of milliseconds to wait for a batch to fill up before attempting to deliver it
  /// [retryDelay] The number of seconds to delay before making the message available for another attempt.
  /// [visibilityTimeoutMs] The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
  const QueueConsumerSettings({
    this.batchSize,
    this.maxConcurrency,
    this.maxRetries,
    this.maxWaitTimeMs,
    this.retryDelay,
    this.visibilityTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'maxConcurrency': ?maxConcurrency,
      'maxRetries': ?maxRetries,
      'maxWaitTimeMs': ?maxWaitTimeMs,
      'retryDelay': ?retryDelay,
      'visibilityTimeoutMs': ?visibilityTimeoutMs,
    };
  }

  factory QueueConsumerSettings.fromMap(Map<String, dynamic> map) {
    return QueueConsumerSettings(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxConcurrency: (() { final guardedValue = map['maxConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxRetries: (() { final guardedValue = map['maxRetries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      maxWaitTimeMs: (() { final guardedValue = map['maxWaitTimeMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      retryDelay: (() { final guardedValue = map['retryDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      visibilityTimeoutMs: (() { final guardedValue = map['visibilityTimeoutMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}

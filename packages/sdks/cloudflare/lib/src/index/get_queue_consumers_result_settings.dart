// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQueueConsumersResultSettings {
  /// The maximum number of messages to include in a batch.
  final pulumi.Input<double> batchSize;
  /// Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
  final pulumi.Input<double> maxConcurrency;
  /// The maximum number of retries
  final pulumi.Input<double> maxRetries;
  /// The number of milliseconds to wait for a batch to fill up before attempting to deliver it
  final pulumi.Input<double> maxWaitTimeMs;
  /// The number of seconds to delay before making the message available for another attempt.
  final pulumi.Input<double> retryDelay;
  /// The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
  final pulumi.Input<double> visibilityTimeoutMs;

  /// Creates a new [GetQueueConsumersResultSettings].
  /// [batchSize] The maximum number of messages to include in a batch.
  /// [maxConcurrency] Maximum number of concurrent consumers that may consume from this Queue. Set to `null` to automatically opt in to the platform's maximum (recommended).
  /// [maxRetries] The maximum number of retries
  /// [maxWaitTimeMs] The number of milliseconds to wait for a batch to fill up before attempting to deliver it
  /// [retryDelay] The number of seconds to delay before making the message available for another attempt.
  /// [visibilityTimeoutMs] The number of milliseconds that a message is exclusively leased. After the timeout, the message becomes available for another attempt.
  const GetQueueConsumersResultSettings({
    required this.batchSize,
    required this.maxConcurrency,
    required this.maxRetries,
    required this.maxWaitTimeMs,
    required this.retryDelay,
    required this.visibilityTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': batchSize,
      'maxConcurrency': maxConcurrency,
      'maxRetries': maxRetries,
      'maxWaitTimeMs': maxWaitTimeMs,
      'retryDelay': retryDelay,
      'visibilityTimeoutMs': visibilityTimeoutMs,
    };
  }

  factory GetQueueConsumersResultSettings.fromMap(Map<String, dynamic> map) {
    return GetQueueConsumersResultSettings(
      batchSize: pulumi.Input.fromValue((map['batchSize'] as num).toDouble()),
      maxConcurrency: pulumi.Input.fromValue((map['maxConcurrency'] as num).toDouble()),
      maxRetries: pulumi.Input.fromValue((map['maxRetries'] as num).toDouble()),
      maxWaitTimeMs: pulumi.Input.fromValue((map['maxWaitTimeMs'] as num).toDouble()),
      retryDelay: pulumi.Input.fromValue((map['retryDelay'] as num).toDouble()),
      visibilityTimeoutMs: pulumi.Input.fromValue((map['visibilityTimeoutMs'] as num).toDouble()),
    );
  }
}

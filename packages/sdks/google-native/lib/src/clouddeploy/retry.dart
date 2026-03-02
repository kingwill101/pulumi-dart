// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retry_backoff_mode.dart';

/// Retries the failed job.
class Retry {
  /// Total number of retries. Retry will skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  final pulumi.Input<String> attempts;
  /// Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
  final pulumi.Input<RetryBackoffMode>? backoffMode;
  /// Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d.
  final pulumi.Input<String>? wait;

  /// Creates a new [Retry].
  /// [attempts] Total number of retries. Retry will skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  /// [backoffMode] Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
  /// [wait] Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d.
  Retry({
    required this.attempts,
    this.backoffMode,
    this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': attempts,
      'backoffMode': ?pulumi.Input.mapOptionalInputValue<RetryBackoffMode, String>(backoffMode, (value) => value.value),
      'wait': ?wait,
    };
  }

  factory Retry.fromMap(Map<String, dynamic> map) {
    return Retry(
      attempts: (map['attempts'] as String).input(),
      backoffMode: map['backoffMode'] == null ? null : (RetryBackoffMode.fromValue(map['backoffMode'] as String)).input(),
      wait: map['wait'] == null ? null : (map['wait'] as String).input(),
    );
  }
}


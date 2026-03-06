// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Retries the failed job.
class RetryResponse {
  /// Total number of retries. Retry will skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  final pulumi.Input<String> attempts;
  /// Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
  final pulumi.Input<String> backoffMode;
  /// Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d.
  final pulumi.Input<String> wait;

  /// Creates a new [RetryResponse].
  /// [attempts] Total number of retries. Retry will skipped if set to 0; The minimum value is 1, and the maximum value is 10.
  /// [backoffMode] Optional. The pattern of how wait time will be increased. Default is linear. Backoff mode will be ignored if `wait` is 0.
  /// [wait] Optional. How long to wait for the first retry. Default is 0, and the maximum value is 14d.
  const RetryResponse({
    required this.attempts,
    required this.backoffMode,
    required this.wait,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attempts': attempts,
      'backoffMode': backoffMode,
      'wait': wait,
    };
  }

  factory RetryResponse.fromMap(Map<String, dynamic> map) {
    return RetryResponse(
      attempts: pulumi.Input.fromValue(map['attempts'] as String),
      backoffMode: pulumi.Input.fromValue(map['backoffMode'] as String),
      wait: pulumi.Input.fromValue(map['wait'] as String),
    );
  }
}


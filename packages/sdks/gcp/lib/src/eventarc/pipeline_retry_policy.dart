// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineRetryPolicy {
  /// The maximum number of delivery attempts for any message. The value must
  /// be between 1 and 100.
  /// The default value for this field is 5.
  final pulumi.Input<int>? maxAttempts;
  /// The maximum amount of seconds to wait between retry attempts. The value
  /// must be between 1 and 600.
  /// The default value for this field is 60.
  final pulumi.Input<String>? maxRetryDelay;
  /// The minimum amount of seconds to wait between retry attempts. The value
  /// must be between 1 and 600.
  /// The default value for this field is 5.
  final pulumi.Input<String>? minRetryDelay;

  /// Creates a new [PipelineRetryPolicy].
  /// [maxAttempts] The maximum number of delivery attempts for any message. The value must
  /// [maxRetryDelay] The maximum amount of seconds to wait between retry attempts. The value
  /// [minRetryDelay] The minimum amount of seconds to wait between retry attempts. The value
  PipelineRetryPolicy({
    this.maxAttempts,
    this.maxRetryDelay,
    this.minRetryDelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAttempts': ?maxAttempts,
      'maxRetryDelay': ?maxRetryDelay,
      'minRetryDelay': ?minRetryDelay,
    };
  }

  factory PipelineRetryPolicy.fromMap(Map<String, dynamic> map) {
    return PipelineRetryPolicy(
      maxAttempts: (() { final guardedValue = map['maxAttempts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRetryDelay: (() { final guardedValue = map['maxRetryDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minRetryDelay: (() { final guardedValue = map['minRetryDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


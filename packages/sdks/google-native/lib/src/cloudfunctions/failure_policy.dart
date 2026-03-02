// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy in case of function's execution failure. If empty, then defaults to ignoring failures (i.e. not retrying them).
class FailurePolicy {
  /// If specified, then the function will be retried in case of a failure.
  final pulumi.Input<Map<String, dynamic>>? retry;

  /// Creates a new [FailurePolicy].
  /// [retry] If specified, then the function will be retried in case of a failure.
  FailurePolicy({
    this.retry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': ?retry,
    };
  }

  factory FailurePolicy.fromMap(Map<String, dynamic> map) {
    return FailurePolicy(
      retry: map['retry'] == null ? null : ((map['retry']! as Map).cast<String, dynamic>()).input(),
    );
  }
}


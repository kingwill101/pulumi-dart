// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the policy in case of function's execution failure. If empty, then defaults to ignoring failures (i.e. not retrying them).
class FailurePolicyResponse {
  /// If specified, then the function will be retried in case of a failure.
  final pulumi.Input<Map<String, dynamic>> retry;

  /// Creates a new [FailurePolicyResponse].
  /// [retry] If specified, then the function will be retried in case of a failure.
  const FailurePolicyResponse({
    required this.retry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': retry,
    };
  }

  factory FailurePolicyResponse.fromMap(Map<String, dynamic> map) {
    return FailurePolicyResponse(
      retry: pulumi.Input.fromValue((map['retry']! as Map).cast<String, dynamic>()),
    );
  }
}

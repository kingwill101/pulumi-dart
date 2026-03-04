// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionEventTriggerFailurePolicy {
  /// Whether the function should be retried on failure.
  final pulumi.Input<bool> retry;

  /// Creates a new [GetFunctionEventTriggerFailurePolicy].
  /// [retry] Whether the function should be retried on failure.
  GetFunctionEventTriggerFailurePolicy({required this.retry});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'retry': retry};
  }

  factory GetFunctionEventTriggerFailurePolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFunctionEventTriggerFailurePolicy(
      retry: pulumi.Input.fromValue(map['retry'] as bool),
    );
  }
}

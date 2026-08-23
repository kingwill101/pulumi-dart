// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionEventTriggerFailurePolicy {
  /// Whether the function should be retried on failure. Defaults to `false`.
  final pulumi.Input<bool> retry;

  /// Creates a new [FunctionEventTriggerFailurePolicy].
  /// [retry] Whether the function should be retried on failure. Defaults to `false`.
  const FunctionEventTriggerFailurePolicy({
    required this.retry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retry': retry,
    };
  }

  factory FunctionEventTriggerFailurePolicy.fromMap(Map<String, dynamic> map) {
    return FunctionEventTriggerFailurePolicy(
      retry: pulumi.Input.fromValue(map['retry'] as bool),
    );
  }
}

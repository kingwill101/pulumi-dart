// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IAM conditions context.
class ConditionContext {
  /// The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  final pulumi.Input<String>? accessTime;

  /// Creates a new [ConditionContext].
  /// [accessTime] The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.
  ConditionContext({
    this.accessTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTime': ?accessTime,
    };
  }

  factory ConditionContext.fromMap(Map<String, dynamic> map) {
    return ConditionContext(
      accessTime: (() { final guardedValue = map['accessTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


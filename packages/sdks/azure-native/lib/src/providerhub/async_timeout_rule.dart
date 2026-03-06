// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AsyncTimeoutRule {
  final pulumi.Input<String>? actionName;
  /// This is a TimeSpan property
  final pulumi.Input<String>? timeout;

  /// Creates a new [AsyncTimeoutRule].
  /// [actionName] Optional.
  /// [timeout] This is a TimeSpan property
  const AsyncTimeoutRule({
    this.actionName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'timeout': ?timeout,
    };
  }

  factory AsyncTimeoutRule.fromMap(Map<String, dynamic> map) {
    return AsyncTimeoutRule(
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


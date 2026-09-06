// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AsyncTimeoutRuleResponse {
  final pulumi.Input<String?>? actionName;
  /// This is a TimeSpan property
  final pulumi.Input<String?>? timeout;

  /// Creates a new [AsyncTimeoutRuleResponse].
  /// [actionName] Optional.
  /// [timeout] This is a TimeSpan property
  const AsyncTimeoutRuleResponse({
    this.actionName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': ?actionName,
      'timeout': ?timeout,
    };
  }

  factory AsyncTimeoutRuleResponse.fromMap(Map<String, dynamic> map) {
    return AsyncTimeoutRuleResponse(
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

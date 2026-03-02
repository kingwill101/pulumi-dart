// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AsyncTimeoutRuleResponse {
  final pulumi.Input<String>? actionName;
  /// This is a TimeSpan property
  final pulumi.Input<String>? timeout;

  /// Creates a new [AsyncTimeoutRuleResponse].
  /// [actionName] Optional.
  /// [timeout] This is a TimeSpan property
  AsyncTimeoutRuleResponse({
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
      actionName: map['actionName'] == null ? null : (map['actionName']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
    );
  }
}


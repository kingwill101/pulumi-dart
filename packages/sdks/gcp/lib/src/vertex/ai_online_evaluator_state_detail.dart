// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiOnlineEvaluatorStateDetail {
  /// (Output)
  /// Human-readable message describing the state of the OnlineEvaluator.
  final pulumi.Input<String?>? message;

  /// Creates a new [AiOnlineEvaluatorStateDetail].
  /// [message] (Output)
  const AiOnlineEvaluatorStateDetail({
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
    };
  }

  factory AiOnlineEvaluatorStateDetail.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorStateDetail(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

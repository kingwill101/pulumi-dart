// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEvaluationItemEvaluationRequestCandidateResponseError {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int?>? code;
  /// (Output)
  /// A developer-facing error message.
  final pulumi.Input<String?>? message;

  /// Creates a new [AiEvaluationItemEvaluationRequestCandidateResponseError].
  /// [code] (Output)
  /// [message] (Output)
  const AiEvaluationItemEvaluationRequestCandidateResponseError({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory AiEvaluationItemEvaluationRequestCandidateResponseError.fromMap(Map<String, dynamic> map) {
    return AiEvaluationItemEvaluationRequestCandidateResponseError(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

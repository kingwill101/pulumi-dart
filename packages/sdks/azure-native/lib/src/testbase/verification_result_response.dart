// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The detailed result of a validation or rule checking.
class VerificationResultResponse {
  /// Message for clarification.
  final pulumi.Input<String>? message;
  /// Indicates if the validation or rule checking is passed.
  final pulumi.Input<String> result;
  /// The name of the verification rule.
  final pulumi.Input<String>? verificationName;

  /// Creates a new [VerificationResultResponse].
  /// [message] Message for clarification.
  /// [result] Indicates if the validation or rule checking is passed.
  /// [verificationName] The name of the verification rule.
  const VerificationResultResponse({
    this.message,
    required this.result,
    this.verificationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'result': result,
      'verificationName': ?verificationName,
    };
  }

  factory VerificationResultResponse.fromMap(Map<String, dynamic> map) {
    return VerificationResultResponse(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      result: pulumi.Input.fromValue(map['result'] as String),
      verificationName: (() { final guardedValue = map['verificationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

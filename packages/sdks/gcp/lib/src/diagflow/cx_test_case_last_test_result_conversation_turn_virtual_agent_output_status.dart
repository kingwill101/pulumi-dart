// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int?>? code;
  /// A JSON encoded list of messages that carry the error details.
  final pulumi.Input<String?>? details;
  /// A developer-facing error message.
  final pulumi.Input<String?>? message;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus].
  /// [code] The status code, which should be an enum value of google.rpc.Code.
  /// [details] A JSON encoded list of messages that carry the error details.
  /// [message] A developer-facing error message.
  const CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details,
      'message': ?message,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnVirtualAgentOutputStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxTestCaseLastTestResultConversationTurnUserInputInputDtmf {
  /// The dtmf digits.
  final pulumi.Input<String>? digits;
  /// The finish digit (if any).
  final pulumi.Input<String>? finishDigit;

  /// Creates a new [CxTestCaseLastTestResultConversationTurnUserInputInputDtmf].
  /// [digits] The dtmf digits.
  /// [finishDigit] The finish digit (if any).
  const CxTestCaseLastTestResultConversationTurnUserInputInputDtmf({
    this.digits,
    this.finishDigit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'digits': ?digits,
      'finishDigit': ?finishDigit,
    };
  }

  factory CxTestCaseLastTestResultConversationTurnUserInputInputDtmf.fromMap(Map<String, dynamic> map) {
    return CxTestCaseLastTestResultConversationTurnUserInputInputDtmf(
      digits: (() { final guardedValue = map['digits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finishDigit: (() { final guardedValue = map['finishDigit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

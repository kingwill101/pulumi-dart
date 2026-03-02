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
  CxTestCaseLastTestResultConversationTurnUserInputInputDtmf({
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
      digits: map['digits'] == null ? null : (map['digits']! as String).input(),
      finishDigit: map['finishDigit'] == null ? null : (map['finishDigit']! as String).input(),
    );
  }
}


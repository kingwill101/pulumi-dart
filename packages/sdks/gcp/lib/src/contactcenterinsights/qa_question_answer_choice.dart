// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QaQuestionAnswerChoice {
  /// Boolean value.
  final pulumi.Input<bool?>? boolValue;
  /// A short string used as an identifier.
  final pulumi.Input<String?>? key;
  /// A value of "Not Applicable (N/A)". If provided, this field may only
  /// be set to `true`. If a question receives this answer, it will be
  /// excluded from any score calculations.
  final pulumi.Input<bool?>? naValue;
  /// Numerical value.
  final pulumi.Input<double?>? numValue;
  /// Numerical score of the answer, used for generating the overall score of
  /// a QaScorecardResult. If the answer uses na_value, this field is unused.
  final pulumi.Input<double?>? score;
  /// String value.
  final pulumi.Input<String?>? strValue;

  /// Creates a new [QaQuestionAnswerChoice].
  /// [boolValue] Boolean value.
  /// [key] A short string used as an identifier.
  /// [naValue] A value of "Not Applicable (N/A)". If provided, this field may only
  /// [numValue] Numerical value.
  /// [score] Numerical score of the answer, used for generating the overall score of
  /// [strValue] String value.
  const QaQuestionAnswerChoice({
    this.boolValue,
    this.key,
    this.naValue,
    this.numValue,
    this.score,
    this.strValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'key': ?key,
      'naValue': ?naValue,
      'numValue': ?numValue,
      'score': ?score,
      'strValue': ?strValue,
    };
  }

  factory QaQuestionAnswerChoice.fromMap(Map<String, dynamic> map) {
    return QaQuestionAnswerChoice(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      naValue: (() { final guardedValue = map['naValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numValue: (() { final guardedValue = map['numValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      score: (() { final guardedValue = map['score']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      strValue: (() { final guardedValue = map['strValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

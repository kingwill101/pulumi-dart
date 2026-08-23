// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QaQuestionPredefinedQuestionConfig {
  /// The type of the predefined question.
  /// Possible values:
  /// CONVERSATION_OUTCOME
  /// CONVERSATION_OUTCOME_ESCALATION_INITIATOR_ROLE
  final pulumi.Input<String>? type;

  /// Creates a new [QaQuestionPredefinedQuestionConfig].
  /// [type] The type of the predefined question.
  const QaQuestionPredefinedQuestionConfig({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory QaQuestionPredefinedQuestionConfig.fromMap(Map<String, dynamic> map) {
    return QaQuestionPredefinedQuestionConfig(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

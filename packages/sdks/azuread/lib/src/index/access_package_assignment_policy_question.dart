// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_question_choice.dart';
import 'access_package_assignment_policy_question_text.dart';

class AccessPackageAssignmentPolicyQuestion {
  /// One or more blocks configuring a choice to the question, as documented below.
  final pulumi.Input<List<AccessPackageAssignmentPolicyQuestionChoice>>? choices;
  /// Whether this question is required.
  final pulumi.Input<bool>? required;
  /// The sequence number of this question.
  final pulumi.Input<int>? sequence;
  /// A block describing the content of this question, as documented below.
  final pulumi.Input<AccessPackageAssignmentPolicyQuestionText> text;

  /// Creates a new [AccessPackageAssignmentPolicyQuestion].
  /// [choices] One or more blocks configuring a choice to the question, as documented below.
  /// [required] Whether this question is required.
  /// [sequence] The sequence number of this question.
  /// [text] A block describing the content of this question, as documented below.
  const AccessPackageAssignmentPolicyQuestion({
    this.choices,
    this.required,
    this.sequence,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'choices': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyQuestionChoice>, List<Map<String, dynamic>>>(choices, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyQuestionChoice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'required': ?required,
      'sequence': ?sequence,
      'text': pulumi.Input.mapInputValue<AccessPackageAssignmentPolicyQuestionText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory AccessPackageAssignmentPolicyQuestion.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestion(
      choices: (() { final guardedValue = map['choices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPackageAssignmentPolicyQuestionChoice>(guardedValue, (value) => AccessPackageAssignmentPolicyQuestionChoice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      text: pulumi.Input.fromValue(AccessPackageAssignmentPolicyQuestionText.fromMap((map['text']! as Map).cast<String, dynamic>())),
    );
  }
}

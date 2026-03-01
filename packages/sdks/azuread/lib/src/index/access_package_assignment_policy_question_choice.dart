// ignore_for_file: unused_element, unnecessary_cast

import 'access_package_assignment_policy_question_choice_display_value.dart';

class AccessPackageAssignmentPolicyQuestionChoice {
  /// The actual value of this choice
  final String actualValue;
  /// The display text of this choice
  final AccessPackageAssignmentPolicyQuestionChoiceDisplayValue displayValue;

  /// Creates a new [AccessPackageAssignmentPolicyQuestionChoice].
  /// [actualValue] The actual value of this choice
  /// [displayValue] The display text of this choice
  AccessPackageAssignmentPolicyQuestionChoice({
    required this.actualValue,
    required this.displayValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualValue': actualValue,
      'displayValue': displayValue.toMap(),
    };
  }

  factory AccessPackageAssignmentPolicyQuestionChoice.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestionChoice(
      actualValue: map['actualValue'] as String,
      displayValue: AccessPackageAssignmentPolicyQuestionChoiceDisplayValue.fromMap((map['displayValue'] as Map).cast<String, dynamic>()),
    );
  }
}


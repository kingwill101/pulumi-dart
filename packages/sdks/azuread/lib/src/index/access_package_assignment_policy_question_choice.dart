// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_question_choice_display_value.dart';

class AccessPackageAssignmentPolicyQuestionChoice {
  /// The actual value of this choice
  final pulumi.Input<String> actualValue;
  /// The display text of this choice
  final pulumi.Input<AccessPackageAssignmentPolicyQuestionChoiceDisplayValue> displayValue;

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
      'displayValue': pulumi.Input.mapInputValue<AccessPackageAssignmentPolicyQuestionChoiceDisplayValue, Map<String, dynamic>>(displayValue, (value) => value.toMap()),
    };
  }

  factory AccessPackageAssignmentPolicyQuestionChoice.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestionChoice(
      actualValue: pulumi.Input.fromValue(map['actualValue'] as String),
      displayValue: pulumi.Input.fromValue(AccessPackageAssignmentPolicyQuestionChoiceDisplayValue.fromMap((map['displayValue']! as Map).cast<String, dynamic>())),
    );
  }
}


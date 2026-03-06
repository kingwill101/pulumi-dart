// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_question_choice_display_value_localized_text.dart';

class AccessPackageAssignmentPolicyQuestionChoiceDisplayValue {
  /// The default text of this question
  final pulumi.Input<String> defaultText;
  /// The localized text of this question
  final pulumi.Input<List<AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText>>? localizedTexts;

  /// Creates a new [AccessPackageAssignmentPolicyQuestionChoiceDisplayValue].
  /// [defaultText] The default text of this question
  /// [localizedTexts] The localized text of this question
  const AccessPackageAssignmentPolicyQuestionChoiceDisplayValue({
    required this.defaultText,
    this.localizedTexts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultText': defaultText,
      'localizedTexts': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText>, List<Map<String, dynamic>>>(localizedTexts, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessPackageAssignmentPolicyQuestionChoiceDisplayValue.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestionChoiceDisplayValue(
      defaultText: pulumi.Input.fromValue(map['defaultText'] as String),
      localizedTexts: (() { final guardedValue = map['localizedTexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText>(guardedValue, (value) => AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


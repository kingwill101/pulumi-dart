// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_assignment_policy_question_text_localized_text.dart';

class AccessPackageAssignmentPolicyQuestionText {
  /// The default text of this question
  final pulumi.Input<String> defaultText;
  /// The localized text of this question
  final pulumi.Input<List<AccessPackageAssignmentPolicyQuestionTextLocalizedText>>? localizedTexts;

  /// Creates a new [AccessPackageAssignmentPolicyQuestionText].
  /// [defaultText] The default text of this question
  /// [localizedTexts] The localized text of this question
  const AccessPackageAssignmentPolicyQuestionText({
    required this.defaultText,
    this.localizedTexts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultText': defaultText,
      'localizedTexts': ?pulumi.Input.mapOptionalInputValue<List<AccessPackageAssignmentPolicyQuestionTextLocalizedText>, List<Map<String, dynamic>>>(localizedTexts, (value) => pulumi.Input.encodeList<AccessPackageAssignmentPolicyQuestionTextLocalizedText, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AccessPackageAssignmentPolicyQuestionText.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestionText(
      defaultText: pulumi.Input.fromValue(map['defaultText'] as String),
      localizedTexts: (() { final guardedValue = map['localizedTexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessPackageAssignmentPolicyQuestionTextLocalizedText>(guardedValue, (value) => AccessPackageAssignmentPolicyQuestionTextLocalizedText.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText {
  /// The localized content of this question
  final pulumi.Input<String> content;

  /// The language code of this question content
  final pulumi.Input<String> languageCode;

  /// Creates a new [AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText].
  /// [content] The localized content of this question
  /// [languageCode] The language code of this question content
  AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText({
    required this.content,
    required this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'languageCode': languageCode};
  }

  factory AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText(
      content: pulumi.Input.fromValue(map['content'] as String),
      languageCode: pulumi.Input.fromValue(map['languageCode'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText {
  /// The localized content of this question
  final String content;
  /// The language code of this question content
  final String languageCode;

  /// Creates a new [AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText].
  /// [content] The localized content of this question
  /// [languageCode] The language code of this question content
  AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText({
    required this.content,
    required this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'languageCode': languageCode,
    };
  }

  factory AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestionChoiceDisplayValueLocalizedText(
      content: map['content'] as String,
      languageCode: map['languageCode'] as String,
    );
  }
}


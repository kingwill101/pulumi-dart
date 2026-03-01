// ignore_for_file: unused_element, unnecessary_cast


class AccessPackageAssignmentPolicyQuestionTextLocalizedText {
  /// The localized content of this question
  final String content;
  /// The language code of this question content
  final String languageCode;

  /// Creates a new [AccessPackageAssignmentPolicyQuestionTextLocalizedText].
  /// [content] The localized content of this question
  /// [languageCode] The language code of this question content
  AccessPackageAssignmentPolicyQuestionTextLocalizedText({
    required this.content,
    required this.languageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'languageCode': languageCode,
    };
  }

  factory AccessPackageAssignmentPolicyQuestionTextLocalizedText.fromMap(Map<String, dynamic> map) {
    return AccessPackageAssignmentPolicyQuestionTextLocalizedText(
      content: map['content'] as String,
      languageCode: map['languageCode'] as String,
    );
  }
}


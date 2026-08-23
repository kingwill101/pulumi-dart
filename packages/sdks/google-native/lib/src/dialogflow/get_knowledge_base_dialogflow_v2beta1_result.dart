// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKnowledgeBase.
class GetKnowledgeBaseDialogflowV2beta1Result {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final String displayName;
  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, this is populated for all non en-us languages. If not populated, the default language en-us applies.
  final String languageCode;
  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  final String name;

  /// Creates a new [GetKnowledgeBaseDialogflowV2beta1Result].
  /// [displayName] The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  /// [languageCode] Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, this is populated for all non en-us languages. If not populated, the default language en-us applies.
  /// [name] The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  const GetKnowledgeBaseDialogflowV2beta1Result({
    required this.displayName,
    required this.languageCode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'languageCode': languageCode,
      'name': name,
    };
  }

  factory GetKnowledgeBaseDialogflowV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeBaseDialogflowV2beta1Result(
      displayName: map['displayName'] as String,
      languageCode: map['languageCode'] as String,
      name: map['name'] as String,
    );
  }
}

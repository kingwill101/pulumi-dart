import 'package:pulumi/pulumi.dart' as pulumi;

enum DocumentKnowledgeTypesItem implements pulumi.PulumiEnum<String> {
  knowledgeTypeUnspecified("KNOWLEDGE_TYPE_UNSPECIFIED"),
  faq("FAQ"),
  extractiveQa("EXTRACTIVE_QA"),
  articleSuggestion("ARTICLE_SUGGESTION"),
  agentFacingSmartReply("AGENT_FACING_SMART_REPLY");

  const DocumentKnowledgeTypesItem(this.wireValue);
  @override
  final String wireValue;

  static DocumentKnowledgeTypesItem fromValue(String value) {
    for (final item in DocumentKnowledgeTypesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DocumentKnowledgeTypesItem value: $value');
  }
}

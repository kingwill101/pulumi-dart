enum DocumentKnowledgeTypesItem {
  knowledgeTypeUnspecified("KNOWLEDGE_TYPE_UNSPECIFIED"),
  faq("FAQ"),
  extractiveQa("EXTRACTIVE_QA"),
  articleSuggestion("ARTICLE_SUGGESTION"),
  agentFacingSmartReply("AGENT_FACING_SMART_REPLY");

  const DocumentKnowledgeTypesItem(this.value);
  final String value;

  static DocumentKnowledgeTypesItem fromValue(String value) {
    for (final item in DocumentKnowledgeTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DocumentKnowledgeTypesItem value: $value');
  }
}


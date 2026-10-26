import 'package:pulumi/pulumi.dart' as pulumi;

enum DocumentKnowledgeTypesItemDialogflowV2beta1 implements pulumi.PulumiEnum<String> {
  knowledgeTypeUnspecified("KNOWLEDGE_TYPE_UNSPECIFIED"),
  faq("FAQ"),
  extractiveQa("EXTRACTIVE_QA"),
  articleSuggestion("ARTICLE_SUGGESTION"),
  agentFacingSmartReply("AGENT_FACING_SMART_REPLY"),
  smartReply("SMART_REPLY");

  const DocumentKnowledgeTypesItemDialogflowV2beta1(this.wireValue);
  @override
  final String wireValue;

  static DocumentKnowledgeTypesItemDialogflowV2beta1 fromValue(String value) {
    for (final item in DocumentKnowledgeTypesItemDialogflowV2beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DocumentKnowledgeTypesItemDialogflowV2beta1 value: $value');
  }
}

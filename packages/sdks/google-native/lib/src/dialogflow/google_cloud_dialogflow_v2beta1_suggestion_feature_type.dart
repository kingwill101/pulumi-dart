/// Type of Human Agent Assistant API feature to request.
enum GoogleCloudDialogflowV2beta1SuggestionFeatureType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  articleSuggestion("ARTICLE_SUGGESTION"),
  faq("FAQ"),
  smartReply("SMART_REPLY"),
  dialogflowAssist("DIALOGFLOW_ASSIST"),
  conversationSummarization("CONVERSATION_SUMMARIZATION"),
  knowledgeSearch("KNOWLEDGE_SEARCH");

  const GoogleCloudDialogflowV2beta1SuggestionFeatureType(this.wireValue);
  final String wireValue;

  static GoogleCloudDialogflowV2beta1SuggestionFeatureType fromValue(String value) {
    for (final item in GoogleCloudDialogflowV2beta1SuggestionFeatureType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudDialogflowV2beta1SuggestionFeatureType value: $value');
  }
}


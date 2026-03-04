// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource {
  /// Knowledge documents to query from. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/knowledgeBases/&lt;KnowledgeBase ID&gt;/documents/&lt;Document ID&gt;.
  final pulumi.Input<List<String>> documents;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource].
  /// [documents] Knowledge documents to query from. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/knowledgeBases/&lt;KnowledgeBase ID&gt;/documents/&lt;Document ID&gt;.
  ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource({
    required this.documents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'documents': documents};
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDocumentQuerySource(
      documents: pulumi.Input.fromValue(
        (map['documents'] as List).cast<String>(),
      ),
    );
  }
}

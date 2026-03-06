// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource {
  /// Knowledge bases to query. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/knowledgeBases/&lt;Knowledge Base ID&gt;.
  final pulumi.Input<List<String>> knowledgeBases;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource].
  /// [knowledgeBases] Knowledge bases to query. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/knowledgeBases/&lt;Knowledge Base ID&gt;.
  const ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource({
    required this.knowledgeBases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knowledgeBases': knowledgeBases,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigKnowledgeBaseQuerySource(
      knowledgeBases: pulumi.Input.fromValue((map['knowledgeBases'] as List).cast<String>()),
    );
  }
}


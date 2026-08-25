// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections {
  /// The selected sections chosen to return when requesting a summary of a conversation
  /// If not provided the default selection will be "{SITUATION, ACTION, RESULT}".
  /// Each value may be one of: `SECTION_TYPE_UNSPECIFIED`, `SITUATION`, `ACTION`, `RESOLUTION`, `REASON_FOR_CANCELLATION`, `CUSTOMER_SATISFACTION`, `ENTITIES`.
  final pulumi.Input<List<String>?>? sectionTypes;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections].
  /// [sectionTypes] The selected sections chosen to return when requesting a summary of a conversation
  const ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections({
    this.sectionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sectionTypes': ?sectionTypes,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigSections(
      sectionTypes: (() { final guardedValue = map['sectionTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

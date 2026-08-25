// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig {
  /// The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent.
  final pulumi.Input<String?>? agent;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig].
  /// [agent] The name of a dialogflow virtual agent used for intent detection and suggestion triggered by human agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agent.
  const ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig({
    this.agent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': ?agent,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigDialogflowQuerySourceHumanAgentSideConfig(
      agent: (() { final guardedValue = map['agent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

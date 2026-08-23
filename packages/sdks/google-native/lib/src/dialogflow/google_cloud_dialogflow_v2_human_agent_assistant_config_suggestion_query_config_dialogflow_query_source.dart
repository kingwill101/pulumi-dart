// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_human_agent_assistant_config_suggestion_query_config_dialogflow_query_source_human_agent_side_config.dart';

/// Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource {
  /// The name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  final pulumi.Input<String> agent;
  /// Optional. The Dialogflow assist configuration for human agent.
  final pulumi.Input<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig>? humanAgentSideConfig;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource].
  /// [agent] The name of a Dialogflow virtual agent used for end user side intent detection and suggestion. Format: `projects//locations//agent`. When multiple agents are allowed in the same Dialogflow project.
  /// [humanAgentSideConfig] Optional. The Dialogflow assist configuration for human agent.
  const GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource({
    required this.agent,
    this.humanAgentSideConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agent': agent,
      'humanAgentSideConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig, Map<String, dynamic>>(humanAgentSideConfig, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource(
      agent: pulumi.Input.fromValue(map['agent'] as String),
      humanAgentSideConfig: (() { final guardedValue = map['humanAgentSideConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySourceHumanAgentSideConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

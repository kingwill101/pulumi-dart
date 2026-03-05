// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse {
  /// Do not trigger if last utterance is small talk.
  final pulumi.Input<bool> noSmallTalk;
  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final pulumi.Input<bool> onlyEndUser;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse].
  /// [noSmallTalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse({
    required this.noSmallTalk,
    required this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noSmallTalk': noSmallTalk,
      'onlyEndUser': onlyEndUser,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionTriggerSettingsResponse(
      noSmallTalk: pulumi.Input.fromValue(map['noSmallTalk'] as bool),
      onlyEndUser: pulumi.Input.fromValue(map['onlyEndUser'] as bool),
    );
  }
}


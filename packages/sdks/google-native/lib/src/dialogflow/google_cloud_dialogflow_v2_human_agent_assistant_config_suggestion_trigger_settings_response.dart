// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse {
  /// Do not trigger if last utterance is small talk.
  final pulumi.Input<bool> noSmalltalk;
  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final pulumi.Input<bool> onlyEndUser;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse].
  /// [noSmalltalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  const GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse({
    required this.noSmalltalk,
    required this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noSmalltalk': noSmalltalk,
      'onlyEndUser': onlyEndUser,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettingsResponse(
      noSmalltalk: pulumi.Input.fromValue(map['noSmalltalk'] as bool),
      onlyEndUser: pulumi.Input.fromValue(map['onlyEndUser'] as bool),
    );
  }
}


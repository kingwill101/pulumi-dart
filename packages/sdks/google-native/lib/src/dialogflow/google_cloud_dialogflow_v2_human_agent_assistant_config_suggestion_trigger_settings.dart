// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings of suggestion trigger.
class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  final pulumi.Input<bool>? noSmalltalk;
  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final pulumi.Input<bool>? onlyEndUser;

  /// Creates a new [GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings].
  /// [noSmalltalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings({
    this.noSmalltalk,
    this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noSmalltalk': ?noSmalltalk,
      'onlyEndUser': ?onlyEndUser,
    };
  }

  factory GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings(
      noSmalltalk: map['noSmalltalk'] == null ? null : (map['noSmalltalk'] as bool).input(),
      onlyEndUser: map['onlyEndUser'] == null ? null : (map['onlyEndUser'] as bool).input(),
    );
  }
}


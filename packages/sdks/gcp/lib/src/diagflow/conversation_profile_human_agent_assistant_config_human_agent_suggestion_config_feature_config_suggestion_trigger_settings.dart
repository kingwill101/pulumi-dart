// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings {
  /// Do not trigger if last utterance is small talk.
  final pulumi.Input<bool>? noSmallTalk;

  /// Only trigger suggestion if participant role of last utterance is END_USER.
  final pulumi.Input<bool>? onlyEndUser;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings].
  /// [noSmallTalk] Do not trigger if last utterance is small talk.
  /// [onlyEndUser] Only trigger suggestion if participant role of last utterance is END_USER.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings({
    this.noSmallTalk,
    this.onlyEndUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noSmallTalk': ?noSmallTalk,
      'onlyEndUser': ?onlyEndUser,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigSuggestionTriggerSettings(
      noSmallTalk: (() {
        final guardedValue = map['noSmallTalk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      onlyEndUser: (() {
        final guardedValue = map['onlyEndUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

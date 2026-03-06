// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings {
  /// If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  final pulumi.Input<bool>? dropHandoffMessages;
  /// If set to true, all messages from ivr stage are dropped.
  final pulumi.Input<bool>? dropIvrMessages;
  /// If set to true, all messages from virtual agent are dropped.
  final pulumi.Input<bool>? dropVirtualAgentMessages;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings].
  /// [dropHandoffMessages] If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  /// [dropIvrMessages] If set to true, all messages from ivr stage are dropped.
  /// [dropVirtualAgentMessages] If set to true, all messages from virtual agent are dropped.
  const ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings({
    this.dropHandoffMessages,
    this.dropIvrMessages,
    this.dropVirtualAgentMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropHandoffMessages': ?dropHandoffMessages,
      'dropIvrMessages': ?dropIvrMessages,
      'dropVirtualAgentMessages': ?dropVirtualAgentMessages,
    };
  }

  factory ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigEndUserSuggestionConfigFeatureConfigQueryConfigContextFilterSettings(
      dropHandoffMessages: (() { final guardedValue = map['dropHandoffMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dropIvrMessages: (() { final guardedValue = map['dropIvrMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dropVirtualAgentMessages: (() { final guardedValue = map['dropVirtualAgentMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


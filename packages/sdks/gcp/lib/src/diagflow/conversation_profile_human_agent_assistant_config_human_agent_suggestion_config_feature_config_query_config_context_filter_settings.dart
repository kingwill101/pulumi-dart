// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings {
  /// If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  final pulumi.Input<bool>? dropHandoffMessages;
  /// If set to true, all messages from ivr stage are dropped.
  final pulumi.Input<bool>? dropIvrMessages;
  /// If set to true, all messages from virtual agent are dropped.
  final pulumi.Input<bool>? dropVirtualAgentMessages;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings].
  /// [dropHandoffMessages] If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  /// [dropIvrMessages] If set to true, all messages from ivr stage are dropped.
  /// [dropVirtualAgentMessages] If set to true, all messages from virtual agent are dropped.
  ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings({
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

  factory ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings.fromMap(Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigHumanAgentSuggestionConfigFeatureConfigQueryConfigContextFilterSettings(
      dropHandoffMessages: map['dropHandoffMessages'] == null ? null : (map['dropHandoffMessages']! as bool).input(),
      dropIvrMessages: map['dropIvrMessages'] == null ? null : (map['dropIvrMessages']! as bool).input(),
      dropVirtualAgentMessages: map['dropVirtualAgentMessages'] == null ? null : (map['dropVirtualAgentMessages']! as bool).input(),
    );
  }
}


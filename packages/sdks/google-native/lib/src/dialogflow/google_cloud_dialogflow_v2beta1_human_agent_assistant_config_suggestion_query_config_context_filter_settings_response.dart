// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings that determine how to filter recent conversation context when generating suggestions.
class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse {
  /// If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  final pulumi.Input<bool> dropHandoffMessages;
  /// If set to true, all messages from ivr stage are dropped.
  final pulumi.Input<bool> dropIvrMessages;
  /// If set to true, all messages from virtual agent are dropped.
  final pulumi.Input<bool> dropVirtualAgentMessages;

  /// Creates a new [GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse].
  /// [dropHandoffMessages] If set to true, the last message from virtual agent (hand off message) and the message before it (trigger message of hand off) are dropped.
  /// [dropIvrMessages] If set to true, all messages from ivr stage are dropped.
  /// [dropVirtualAgentMessages] If set to true, all messages from virtual agent are dropped.
  const GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse({
    required this.dropHandoffMessages,
    required this.dropIvrMessages,
    required this.dropVirtualAgentMessages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropHandoffMessages': dropHandoffMessages,
      'dropIvrMessages': dropIvrMessages,
      'dropVirtualAgentMessages': dropVirtualAgentMessages,
    };
  }

  factory GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettingsResponse(
      dropHandoffMessages: pulumi.Input.fromValue(map['dropHandoffMessages'] as bool),
      dropIvrMessages: pulumi.Input.fromValue(map['dropIvrMessages'] as bool),
      dropVirtualAgentMessages: pulumi.Input.fromValue(map['dropVirtualAgentMessages'] as bool),
    );
  }
}

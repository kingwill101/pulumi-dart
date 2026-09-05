// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic {
  /// Represents the custom memory topic label.
  final pulumi.Input<String?>? customMemoryTopicLabel;
  /// Represents the managed memory topic. Possible values: ["USER_PERSONAL_INFO", "USER_PREFERENCES", "KEY_CONVERSATION_DETAILS", "EXPLICIT_INSTRUCTIONS"]
  final pulumi.Input<String?>? managedMemoryTopic;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic].
  /// [customMemoryTopicLabel] Represents the custom memory topic label.
  /// [managedMemoryTopic] Represents the managed memory topic. Possible values: ["USER_PERSONAL_INFO", "USER_PREFERENCES", "KEY_CONVERSATION_DETAILS", "EXPLICIT_INSTRUCTIONS"]
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic({
    this.customMemoryTopicLabel,
    this.managedMemoryTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMemoryTopicLabel': ?customMemoryTopicLabel,
      'managedMemoryTopic': ?managedMemoryTopic,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigGenerateMemoriesExampleGeneratedMemoryTopic(
      customMemoryTopicLabel: (() { final guardedValue = map['customMemoryTopicLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedMemoryTopic: (() { final guardedValue = map['managedMemoryTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

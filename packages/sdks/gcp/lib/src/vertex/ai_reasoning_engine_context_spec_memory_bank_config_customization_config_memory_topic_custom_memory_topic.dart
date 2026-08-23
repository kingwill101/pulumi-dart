// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic {
  /// Description of custom memory topic.
  final pulumi.Input<String>? description;
  /// Label of custom memory topic.
  final pulumi.Input<String>? label;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic].
  /// [description] Description of custom memory topic.
  /// [label] Label of custom memory topic.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic({
    this.description,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'label': ?label,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_memory_topic_custom_memory_topic.dart';
import 'ai_reasoning_engine_context_spec_memory_bank_config_customization_config_memory_topic_managed_memory_topic.dart';

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic {
  /// Optional. Custom memory topic.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic>? customMemoryTopic;
  /// Optional. Managed memory topic.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic>? managedMemoryTopic;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic].
  /// [customMemoryTopic] Optional. Custom memory topic.
  /// [managedMemoryTopic] Optional. Managed memory topic.
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic({
    this.customMemoryTopic,
    this.managedMemoryTopic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMemoryTopic': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic, Map<String, dynamic>>(customMemoryTopic, (value) => value.toMap()),
      'managedMemoryTopic': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic, Map<String, dynamic>>(managedMemoryTopic, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopic(
      customMemoryTopic: (() { final guardedValue = map['customMemoryTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicCustomMemoryTopic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedMemoryTopic: (() { final guardedValue = map['managedMemoryTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

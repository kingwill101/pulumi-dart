// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic {
  /// Managed topic enum (e.g. USER_PREFERENCES, EXPLICIT_INSTRUCTIONS).
  final pulumi.Input<String>? managedTopicEnum;

  /// Creates a new [AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic].
  /// [managedTopicEnum] Managed topic enum (e.g. USER_PREFERENCES, EXPLICIT_INSTRUCTIONS).
  const AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic({
    this.managedTopicEnum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedTopicEnum': ?managedTopicEnum,
    };
  }

  factory AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineContextSpecMemoryBankConfigCustomizationConfigMemoryTopicManagedMemoryTopic(
      managedTopicEnum: (() { final guardedValue = map['managedTopicEnum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

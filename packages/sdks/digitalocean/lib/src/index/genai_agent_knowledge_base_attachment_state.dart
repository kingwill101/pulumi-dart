// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GenaiAgentKnowledgeBaseAttachment resources.
class GenaiAgentKnowledgeBaseAttachmentState {
  /// A unique identifier for an agent.
  final pulumi.Input<String>? agentUuid;
  /// A unique identifier for a knowledge base.
  final pulumi.Input<String>? knowledgeBaseUuid;

  /// Creates a new [GenaiAgentKnowledgeBaseAttachmentState].
  /// [agentUuid] A unique identifier for an agent.
  /// [knowledgeBaseUuid] A unique identifier for a knowledge base.
  const GenaiAgentKnowledgeBaseAttachmentState({
    this.agentUuid,
    this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': ?agentUuid,
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
    };
  }

  factory GenaiAgentKnowledgeBaseAttachmentState.fromMap(Map<String, dynamic> map) {
    return GenaiAgentKnowledgeBaseAttachmentState(
      agentUuid: (() { final guardedValue = map['agentUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      knowledgeBaseUuid: (() { final guardedValue = map['knowledgeBaseUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

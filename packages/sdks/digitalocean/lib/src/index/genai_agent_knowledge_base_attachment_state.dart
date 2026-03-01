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
  GenaiAgentKnowledgeBaseAttachmentState({
    pulumi.Output<String>? agentUuid,
    pulumi.Output<String>? knowledgeBaseUuid,
  }) :
      agentUuid = pulumi.Input.asOptionalInput<String>(agentUuid),
      knowledgeBaseUuid = pulumi.Input.asOptionalInput<String>(knowledgeBaseUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': ?agentUuid,
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
    };
  }

  factory GenaiAgentKnowledgeBaseAttachmentState.fromMap(Map<String, dynamic> map) {
    return GenaiAgentKnowledgeBaseAttachmentState(
      agentUuid: map['agentUuid'] == null ? null : pulumi.Output.create<String>(map['agentUuid'] as String),
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : pulumi.Output.create<String>(map['knowledgeBaseUuid'] as String),
    );
  }
}


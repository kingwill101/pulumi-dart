// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GradientaiAgentKnowledgeBaseAttachment resources.
class GradientaiAgentKnowledgeBaseAttachmentState {
  /// A unique identifier for an agent.
  final pulumi.Input<String>? agentUuid;
  /// A unique identifier for a knowledge base.
  final pulumi.Input<String>? knowledgeBaseUuid;

  /// Creates a new [GradientaiAgentKnowledgeBaseAttachmentState].
  /// [agentUuid] A unique identifier for an agent.
  /// [knowledgeBaseUuid] A unique identifier for a knowledge base.
  GradientaiAgentKnowledgeBaseAttachmentState({
    this.agentUuid,
    this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': ?agentUuid,
      'knowledgeBaseUuid': ?knowledgeBaseUuid,
    };
  }

  factory GradientaiAgentKnowledgeBaseAttachmentState.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentKnowledgeBaseAttachmentState(
      agentUuid: map['agentUuid'] == null ? null : (map['agentUuid'] as String).input(),
      knowledgeBaseUuid: map['knowledgeBaseUuid'] == null ? null : (map['knowledgeBaseUuid'] as String).input(),
    );
  }
}


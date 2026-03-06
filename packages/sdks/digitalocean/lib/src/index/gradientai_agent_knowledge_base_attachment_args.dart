// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_gradientai_agent_knowledge_base_attachment_gradientai_agent_knowledge_base_attachment_args_doc}
/// The set of arguments for GradientaiAgentKnowledgeBaseAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_agent_knowledge_base_attachment_gradientai_agent_knowledge_base_attachment_args_doc}
class GradientaiAgentKnowledgeBaseAttachmentArgs {
  /// A unique identifier for an agent.
  final pulumi.Input<String> agentUuid;
  /// A unique identifier for a knowledge base.
  final pulumi.Input<String> knowledgeBaseUuid;

  /// Creates a new [GradientaiAgentKnowledgeBaseAttachmentArgs].
  /// [agentUuid] A unique identifier for an agent.
  /// [knowledgeBaseUuid] A unique identifier for a knowledge base.
  const GradientaiAgentKnowledgeBaseAttachmentArgs({
    required this.agentUuid,
    required this.knowledgeBaseUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentUuid': agentUuid,
      'knowledgeBaseUuid': knowledgeBaseUuid,
    };
  }

  factory GradientaiAgentKnowledgeBaseAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentKnowledgeBaseAttachmentArgs(
      agentUuid: pulumi.Input.fromValue(map['agentUuid'] as String),
      knowledgeBaseUuid: pulumi.Input.fromValue(map['knowledgeBaseUuid'] as String),
    );
  }
}


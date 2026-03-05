import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_knowledge_base_attachment_args.dart';
import 'genai_agent_knowledge_base_attachment_state.dart';

class GenaiAgentKnowledgeBaseAttachment extends pulumi.CustomResource {
  /// A unique identifier for an agent.
  late final pulumi.Output<String> agentUuid;
  /// A unique identifier for a knowledge base.
  late final pulumi.Output<String> knowledgeBaseUuid;

  /// Creates a new [GenaiAgentKnowledgeBaseAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiAgentKnowledgeBaseAttachment]. {@macro pulumi_index_genai_agent_knowledge_base_attachment_genai_agent_knowledge_base_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiAgentKnowledgeBaseAttachment(
    String name, {
    GenaiAgentKnowledgeBaseAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgentKnowledgeBaseAttachment:GenaiAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentUuid = registerOutput<String>('agentUuid');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }

  /// Gets an existing [GenaiAgentKnowledgeBaseAttachment] resource's state with the given [name] and [id].
  static GenaiAgentKnowledgeBaseAttachment get(
    String name,
    pulumi.Input<String> id, {
    GenaiAgentKnowledgeBaseAttachmentState? state,
  }) {
    return GenaiAgentKnowledgeBaseAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GenaiAgentKnowledgeBaseAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgentKnowledgeBaseAttachment:GenaiAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentUuid = registerOutput<String>('agentUuid');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }
}

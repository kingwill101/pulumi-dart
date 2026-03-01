import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_knowledge_base_attachment_args.dart';
import 'gradientai_agent_knowledge_base_attachment_state.dart';

class GradientaiAgentKnowledgeBaseAttachment extends pulumi.CustomResource {
  /// A unique identifier for an agent.
  late final pulumi.Output<String> agentUuid;
  /// A unique identifier for a knowledge base.
  late final pulumi.Output<String> knowledgeBaseUuid;

  /// Creates a new [GradientaiAgentKnowledgeBaseAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiAgentKnowledgeBaseAttachment]. {@macro pulumi_index_gradientai_agent_knowledge_base_attachment_gradientai_agent_knowledge_base_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiAgentKnowledgeBaseAttachment(
    String name, {
    GradientaiAgentKnowledgeBaseAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgentKnowledgeBaseAttachment:GradientaiAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentUuid = registerOutput<String>('agentUuid');
    this.knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }

  /// Gets an existing [GradientaiAgentKnowledgeBaseAttachment] resource's state with the given [name] and [id].
  static GradientaiAgentKnowledgeBaseAttachment get(
    String name,
    pulumi.Input<String> id, {
    GradientaiAgentKnowledgeBaseAttachmentState? state,
  }) {
    return GradientaiAgentKnowledgeBaseAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GradientaiAgentKnowledgeBaseAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgentKnowledgeBaseAttachment:GradientaiAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.agentUuid = registerOutput<String>('agentUuid');
    this.knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_agent_knowledge_base_attachment_args.dart';
import 'agent_platform_agent_knowledge_base_attachment_state.dart';

class AgentPlatformAgentKnowledgeBaseAttachment extends pulumi.CustomResource {
  /// A unique identifier for an agent.
  late final pulumi.Output<String> agentUuid;
  /// A unique identifier for a knowledge base.
  late final pulumi.Output<String> knowledgeBaseUuid;

  /// Creates a new [AgentPlatformAgentKnowledgeBaseAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformAgentKnowledgeBaseAttachment]. {@macro pulumi_index_agent_platform_agent_knowledge_base_attachment_agent_platform_agent_knowledge_base_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformAgentKnowledgeBaseAttachment(
    String name, {
    AgentPlatformAgentKnowledgeBaseAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformAgentKnowledgeBaseAttachment:AgentPlatformAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.83.0').merge(options),
        ) {
    agentUuid = registerOutput<String>('agentUuid');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }

  /// Gets an existing [AgentPlatformAgentKnowledgeBaseAttachment] resource's state with the given [name] and [id].
  static AgentPlatformAgentKnowledgeBaseAttachment get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformAgentKnowledgeBaseAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformAgentKnowledgeBaseAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformAgentKnowledgeBaseAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformAgentKnowledgeBaseAttachment:AgentPlatformAgentKnowledgeBaseAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentUuid = registerOutput<String>('agentUuid');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }

  /// Creates a typed reference to an existing [AgentPlatformAgentKnowledgeBaseAttachment] resource.
  AgentPlatformAgentKnowledgeBaseAttachment.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformAgentKnowledgeBaseAttachment:AgentPlatformAgentKnowledgeBaseAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentUuid = registerOutput<String>('agentUuid');
    knowledgeBaseUuid = registerOutput<String>('knowledgeBaseUuid');
  }
}

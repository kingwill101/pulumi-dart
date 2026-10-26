import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_platform_agent_agent_guardrail.dart';
import 'agent_platform_agent_anthropic_api_key.dart';
import 'agent_platform_agent_api_key.dart';
import 'agent_platform_agent_api_key_info.dart';
import 'agent_platform_agent_args.dart';
import 'agent_platform_agent_chatbot.dart';
import 'agent_platform_agent_chatbot_identifier.dart';
import 'agent_platform_agent_child_agent.dart';
import 'agent_platform_agent_deployment.dart';
import 'agent_platform_agent_function.dart';
import 'agent_platform_agent_knowledge_base.dart';
import 'agent_platform_agent_model.dart';
import 'agent_platform_agent_open_ai_api_key.dart';
import 'agent_platform_agent_parent_agent.dart';
import 'agent_platform_agent_state.dart';
import 'agent_platform_agent_template.dart';

class AgentPlatformAgent extends pulumi.CustomResource {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  late final pulumi.Output<List<AgentPlatformAgentAgentGuardrail>?> agentGuardrails;
  /// Anthropic API Key information
  late final pulumi.Output<List<AgentPlatformAgentAnthropicApiKey>?> anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  late final pulumi.Output<String?> anthropicKeyUuid;
  /// List of API Key Infos
  late final pulumi.Output<List<AgentPlatformAgentApiKeyInfo>?> apiKeyInfos;
  /// List of API Keys
  late final pulumi.Output<List<AgentPlatformAgentApiKey>?> apiKeys;
  /// List of Chatbot Identifiers
  late final pulumi.Output<List<AgentPlatformAgentChatbotIdentifier>?> chatbotIdentifiers;
  /// ChatBot configuration
  late final pulumi.Output<List<AgentPlatformAgentChatbot>?> chatbots;
  /// List of child agents
  late final pulumi.Output<List<AgentPlatformAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  late final pulumi.Output<String?> createdAt;
  /// List of API Key Infos
  late final pulumi.Output<List<AgentPlatformAgentDeployment>?> deployments;
  /// Description for the Agent
  late final pulumi.Output<String?> description;
  /// List of Functions
  late final pulumi.Output<List<AgentPlatformAgentFunction>?> functions;
  /// If case condition
  late final pulumi.Output<String?> ifCase;
  /// Instruction for the Agent
  late final pulumi.Output<String> instruction;
  /// K value
  late final pulumi.Output<int?> k;
  /// Ids of the knowledge base(s) to attach to the agent
  late final pulumi.Output<List<String>?> knowledgeBaseUuids;
  /// List of Knowledge Bases
  late final pulumi.Output<List<AgentPlatformAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  late final pulumi.Output<int?> maxTokens;
  /// Model UUID of the Agent
  late final pulumi.Output<String> modelUuid;
  /// Model of the Agent
  late final pulumi.Output<List<AgentPlatformAgentModel>> models;
  /// Name of the Agent
  late final pulumi.Output<String> name;
  /// OpenAI API Key information
  late final pulumi.Output<List<AgentPlatformAgentOpenAiApiKey>?> openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  late final pulumi.Output<String?> openAiKeyUuid;
  /// List of child agents
  late final pulumi.Output<List<AgentPlatformAgentParentAgent>> parentAgents;
  /// Project ID of the Agent
  late final pulumi.Output<String> projectId;
  /// Indicates if the agent should provide citations in responses
  late final pulumi.Output<bool?> provideCitations;
  /// Region where the Agent is deployed
  late final pulumi.Output<String> region;
  /// Retrieval method used
  late final pulumi.Output<String?> retrievalMethod;
  /// Timestamp when the route was created
  late final pulumi.Output<String> routeCreatedAt;
  /// User who created the route
  late final pulumi.Output<String?> routeCreatedBy;
  /// Route name
  late final pulumi.Output<String?> routeName;
  /// Route UUID
  late final pulumi.Output<String?> routeUuid;
  /// List of Tags
  late final pulumi.Output<List<String>?> tags;
  /// Agent temperature setting
  late final pulumi.Output<double?> temperature;
  /// Agent Template
  late final pulumi.Output<List<AgentPlatformAgentTemplate>?> templates;
  /// Top P sampling parameter
  late final pulumi.Output<double?> topP;
  /// Timestamp when the Agent was updated
  late final pulumi.Output<String> updatedAt;
  /// URL for the Agent
  late final pulumi.Output<String?> url;
  /// User ID linked with the Agent
  late final pulumi.Output<String?> userId;
  /// Identifier for the workspace
  late final pulumi.Output<String?> workspaceUuid;

  /// Creates a new [AgentPlatformAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPlatformAgent]. {@macro pulumi_index_agent_platform_agent_agent_platform_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPlatformAgent(
    String name, {
    AgentPlatformAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformAgent:AgentPlatformAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.84.1').merge(options),
        ) {
    agentGuardrails = registerOutput<List<AgentPlatformAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentAgentGuardrail>(guardedValue, (value) => AgentPlatformAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<AgentPlatformAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentAnthropicApiKey>(guardedValue, (value) => AgentPlatformAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<AgentPlatformAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentApiKeyInfo>(guardedValue, (value) => AgentPlatformAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<AgentPlatformAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentApiKey>(guardedValue, (value) => AgentPlatformAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<AgentPlatformAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChatbotIdentifier>(guardedValue, (value) => AgentPlatformAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<AgentPlatformAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChatbot>(guardedValue, (value) => AgentPlatformAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<AgentPlatformAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChildAgent>(guardedValue, (value) => AgentPlatformAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<AgentPlatformAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentDeployment>(guardedValue, (value) => AgentPlatformAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<AgentPlatformAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentFunction>(guardedValue, (value) => AgentPlatformAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<AgentPlatformAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentKnowledgeBase>(guardedValue, (value) => AgentPlatformAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<AgentPlatformAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentModel>(guardedValue, (value) => AgentPlatformAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<AgentPlatformAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentOpenAiApiKey>(guardedValue, (value) => AgentPlatformAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<AgentPlatformAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentParentAgent>(guardedValue, (value) => AgentPlatformAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
    projectId = registerOutput<String>('projectId');
    provideCitations = registerOutput<bool?>('provideCitations');
    region = registerOutput<String>('region');
    retrievalMethod = registerOutput<String?>('retrievalMethod');
    routeCreatedAt = registerOutput<String>('routeCreatedAt');
    routeCreatedBy = registerOutput<String?>('routeCreatedBy');
    routeName = registerOutput<String?>('routeName');
    routeUuid = registerOutput<String?>('routeUuid');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    temperature = registerOutput<double?>('temperature');
    templates = registerOutput<List<AgentPlatformAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentTemplate>(guardedValue, (value) => AgentPlatformAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }

  /// Gets an existing [AgentPlatformAgent] resource's state with the given [name] and [id].
  static AgentPlatformAgent get(
    String name,
    pulumi.Input<String> id, {
    AgentPlatformAgentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentPlatformAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentPlatformAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/agentPlatformAgent:AgentPlatformAgent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentGuardrails = registerOutput<List<AgentPlatformAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentAgentGuardrail>(guardedValue, (value) => AgentPlatformAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<AgentPlatformAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentAnthropicApiKey>(guardedValue, (value) => AgentPlatformAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<AgentPlatformAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentApiKeyInfo>(guardedValue, (value) => AgentPlatformAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<AgentPlatformAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentApiKey>(guardedValue, (value) => AgentPlatformAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<AgentPlatformAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChatbotIdentifier>(guardedValue, (value) => AgentPlatformAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<AgentPlatformAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChatbot>(guardedValue, (value) => AgentPlatformAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<AgentPlatformAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChildAgent>(guardedValue, (value) => AgentPlatformAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<AgentPlatformAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentDeployment>(guardedValue, (value) => AgentPlatformAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<AgentPlatformAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentFunction>(guardedValue, (value) => AgentPlatformAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<AgentPlatformAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentKnowledgeBase>(guardedValue, (value) => AgentPlatformAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<AgentPlatformAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentModel>(guardedValue, (value) => AgentPlatformAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<AgentPlatformAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentOpenAiApiKey>(guardedValue, (value) => AgentPlatformAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<AgentPlatformAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentParentAgent>(guardedValue, (value) => AgentPlatformAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
    projectId = registerOutput<String>('projectId');
    provideCitations = registerOutput<bool?>('provideCitations');
    region = registerOutput<String>('region');
    retrievalMethod = registerOutput<String?>('retrievalMethod');
    routeCreatedAt = registerOutput<String>('routeCreatedAt');
    routeCreatedBy = registerOutput<String?>('routeCreatedBy');
    routeName = registerOutput<String?>('routeName');
    routeUuid = registerOutput<String?>('routeUuid');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    temperature = registerOutput<double?>('temperature');
    templates = registerOutput<List<AgentPlatformAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentTemplate>(guardedValue, (value) => AgentPlatformAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }

  /// Creates a typed reference to an existing [AgentPlatformAgent] resource.
  AgentPlatformAgent.reference(String urn)
    : super(
        'digitalocean:index/agentPlatformAgent:AgentPlatformAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentGuardrails = registerOutput<List<AgentPlatformAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentAgentGuardrail>(guardedValue, (value) => AgentPlatformAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<AgentPlatformAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentAnthropicApiKey>(guardedValue, (value) => AgentPlatformAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<AgentPlatformAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentApiKeyInfo>(guardedValue, (value) => AgentPlatformAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<AgentPlatformAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentApiKey>(guardedValue, (value) => AgentPlatformAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<AgentPlatformAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChatbotIdentifier>(guardedValue, (value) => AgentPlatformAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<AgentPlatformAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChatbot>(guardedValue, (value) => AgentPlatformAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<AgentPlatformAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentChildAgent>(guardedValue, (value) => AgentPlatformAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<AgentPlatformAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentDeployment>(guardedValue, (value) => AgentPlatformAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<AgentPlatformAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentFunction>(guardedValue, (value) => AgentPlatformAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<AgentPlatformAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentKnowledgeBase>(guardedValue, (value) => AgentPlatformAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<AgentPlatformAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentModel>(guardedValue, (value) => AgentPlatformAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<AgentPlatformAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentOpenAiApiKey>(guardedValue, (value) => AgentPlatformAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<AgentPlatformAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentParentAgent>(guardedValue, (value) => AgentPlatformAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
    projectId = registerOutput<String>('projectId');
    provideCitations = registerOutput<bool?>('provideCitations');
    region = registerOutput<String>('region');
    retrievalMethod = registerOutput<String?>('retrievalMethod');
    routeCreatedAt = registerOutput<String>('routeCreatedAt');
    routeCreatedBy = registerOutput<String?>('routeCreatedBy');
    routeName = registerOutput<String?>('routeName');
    routeUuid = registerOutput<String?>('routeUuid');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    temperature = registerOutput<double?>('temperature');
    templates = registerOutput<List<AgentPlatformAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentPlatformAgentTemplate>(guardedValue, (value) => AgentPlatformAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }
}

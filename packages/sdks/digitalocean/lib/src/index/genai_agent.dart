import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_agent_guardrail.dart';
import 'genai_agent_anthropic_api_key.dart';
import 'genai_agent_api_key.dart';
import 'genai_agent_api_key_info.dart';
import 'genai_agent_args.dart';
import 'genai_agent_chatbot.dart';
import 'genai_agent_chatbot_identifier.dart';
import 'genai_agent_child_agent.dart';
import 'genai_agent_deployment.dart';
import 'genai_agent_function.dart';
import 'genai_agent_knowledge_base.dart';
import 'genai_agent_model.dart';
import 'genai_agent_open_ai_api_key.dart';
import 'genai_agent_parent_agent.dart';
import 'genai_agent_state.dart';
import 'genai_agent_template.dart';

class GenaiAgent extends pulumi.CustomResource {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  late final pulumi.Output<List<GenaiAgentAgentGuardrail>?> agentGuardrails;
  /// Anthropic API Key information
  late final pulumi.Output<List<GenaiAgentAnthropicApiKey>?> anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  late final pulumi.Output<String?> anthropicKeyUuid;
  /// List of API Key Infos
  late final pulumi.Output<List<GenaiAgentApiKeyInfo>?> apiKeyInfos;
  /// List of API Keys
  late final pulumi.Output<List<GenaiAgentApiKey>?> apiKeys;
  /// List of Chatbot Identifiers
  late final pulumi.Output<List<GenaiAgentChatbotIdentifier>?> chatbotIdentifiers;
  /// ChatBot configuration
  late final pulumi.Output<List<GenaiAgentChatbot>?> chatbots;
  /// List of child agents
  late final pulumi.Output<List<GenaiAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  late final pulumi.Output<String?> createdAt;
  /// List of API Key Infos
  late final pulumi.Output<List<GenaiAgentDeployment>?> deployments;
  /// Description for the Agent
  late final pulumi.Output<String?> description;
  /// List of Functions
  late final pulumi.Output<List<GenaiAgentFunction>?> functions;
  /// If case condition
  late final pulumi.Output<String?> ifCase;
  /// Instruction for the Agent
  late final pulumi.Output<String> instruction;
  /// K value
  late final pulumi.Output<int?> k;
  /// Ids of the knowledge base(s) to attach to the agent
  late final pulumi.Output<List<String>?> knowledgeBaseUuids;
  /// List of Knowledge Bases
  late final pulumi.Output<List<GenaiAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  late final pulumi.Output<int?> maxTokens;
  /// Model UUID of the Agent
  late final pulumi.Output<String> modelUuid;
  /// Model of the Agent
  late final pulumi.Output<List<GenaiAgentModel>> models;
  /// Name of the Agent
  late final pulumi.Output<String> name;
  /// OpenAI API Key information
  late final pulumi.Output<List<GenaiAgentOpenAiApiKey>?> openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  late final pulumi.Output<String?> openAiKeyUuid;
  /// List of child agents
  late final pulumi.Output<List<GenaiAgentParentAgent>> parentAgents;
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
  late final pulumi.Output<List<GenaiAgentTemplate>?> templates;
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

  /// Creates a new [GenaiAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GenaiAgent]. {@macro pulumi_index_genai_agent_genai_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GenaiAgent(
    String name, {
    GenaiAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgent:GenaiAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.80.1').merge(options),
        ) {
    agentGuardrails = registerOutput<List<GenaiAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentAgentGuardrail>(guardedValue, (value) => GenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<GenaiAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentAnthropicApiKey>(guardedValue, (value) => GenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<GenaiAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentApiKeyInfo>(guardedValue, (value) => GenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<GenaiAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentApiKey>(guardedValue, (value) => GenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<GenaiAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChatbotIdentifier>(guardedValue, (value) => GenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<GenaiAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChatbot>(guardedValue, (value) => GenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<GenaiAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChildAgent>(guardedValue, (value) => GenaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<GenaiAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentDeployment>(guardedValue, (value) => GenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<GenaiAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentFunction>(guardedValue, (value) => GenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<GenaiAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentKnowledgeBase>(guardedValue, (value) => GenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<GenaiAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentModel>(guardedValue, (value) => GenaiAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<GenaiAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentOpenAiApiKey>(guardedValue, (value) => GenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<GenaiAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentParentAgent>(guardedValue, (value) => GenaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
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
    templates = registerOutput<List<GenaiAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentTemplate>(guardedValue, (value) => GenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }

  /// Gets an existing [GenaiAgent] resource's state with the given [name] and [id].
  static GenaiAgent get(
    String name,
    pulumi.Input<String> id, {
    GenaiAgentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GenaiAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GenaiAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/genaiAgent:GenaiAgent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentGuardrails = registerOutput<List<GenaiAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentAgentGuardrail>(guardedValue, (value) => GenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<GenaiAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentAnthropicApiKey>(guardedValue, (value) => GenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<GenaiAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentApiKeyInfo>(guardedValue, (value) => GenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<GenaiAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentApiKey>(guardedValue, (value) => GenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<GenaiAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChatbotIdentifier>(guardedValue, (value) => GenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<GenaiAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChatbot>(guardedValue, (value) => GenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<GenaiAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChildAgent>(guardedValue, (value) => GenaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<GenaiAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentDeployment>(guardedValue, (value) => GenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<GenaiAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentFunction>(guardedValue, (value) => GenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<GenaiAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentKnowledgeBase>(guardedValue, (value) => GenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<GenaiAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentModel>(guardedValue, (value) => GenaiAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<GenaiAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentOpenAiApiKey>(guardedValue, (value) => GenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<GenaiAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentParentAgent>(guardedValue, (value) => GenaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
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
    templates = registerOutput<List<GenaiAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentTemplate>(guardedValue, (value) => GenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }

  /// Creates a typed reference to an existing [GenaiAgent] resource.
  GenaiAgent.reference(String urn)
    : super(
        'digitalocean:index/genaiAgent:GenaiAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentGuardrails = registerOutput<List<GenaiAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentAgentGuardrail>(guardedValue, (value) => GenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<GenaiAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentAnthropicApiKey>(guardedValue, (value) => GenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<GenaiAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentApiKeyInfo>(guardedValue, (value) => GenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<GenaiAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentApiKey>(guardedValue, (value) => GenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<GenaiAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChatbotIdentifier>(guardedValue, (value) => GenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<GenaiAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChatbot>(guardedValue, (value) => GenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<GenaiAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentChildAgent>(guardedValue, (value) => GenaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<GenaiAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentDeployment>(guardedValue, (value) => GenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<GenaiAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentFunction>(guardedValue, (value) => GenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<GenaiAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentKnowledgeBase>(guardedValue, (value) => GenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<GenaiAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentModel>(guardedValue, (value) => GenaiAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<GenaiAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentOpenAiApiKey>(guardedValue, (value) => GenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<GenaiAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentParentAgent>(guardedValue, (value) => GenaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
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
    templates = registerOutput<List<GenaiAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GenaiAgentTemplate>(guardedValue, (value) => GenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }
}

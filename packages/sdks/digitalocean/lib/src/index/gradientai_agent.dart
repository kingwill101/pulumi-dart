import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_agent_guardrail.dart';
import 'gradientai_agent_anthropic_api_key.dart';
import 'gradientai_agent_api_key.dart';
import 'gradientai_agent_api_key_info.dart';
import 'gradientai_agent_args.dart';
import 'gradientai_agent_chatbot.dart';
import 'gradientai_agent_chatbot_identifier.dart';
import 'gradientai_agent_child_agent.dart';
import 'gradientai_agent_deployment.dart';
import 'gradientai_agent_function.dart';
import 'gradientai_agent_knowledge_base.dart';
import 'gradientai_agent_model.dart';
import 'gradientai_agent_open_ai_api_key.dart';
import 'gradientai_agent_parent_agent.dart';
import 'gradientai_agent_state.dart';
import 'gradientai_agent_template.dart';

class GradientaiAgent extends pulumi.CustomResource {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  late final pulumi.Output<List<GradientaiAgentAgentGuardrail>?> agentGuardrails;
  /// Anthropic API Key information
  late final pulumi.Output<List<GradientaiAgentAnthropicApiKey>?> anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  late final pulumi.Output<String?> anthropicKeyUuid;
  /// List of API Key Infos
  late final pulumi.Output<List<GradientaiAgentApiKeyInfo>?> apiKeyInfos;
  /// List of API Keys
  late final pulumi.Output<List<GradientaiAgentApiKey>?> apiKeys;
  /// List of Chatbot Identifiers
  late final pulumi.Output<List<GradientaiAgentChatbotIdentifier>?> chatbotIdentifiers;
  /// ChatBot configuration
  late final pulumi.Output<List<GradientaiAgentChatbot>?> chatbots;
  /// List of child agents
  late final pulumi.Output<List<GradientaiAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  late final pulumi.Output<String?> createdAt;
  /// List of API Key Infos
  late final pulumi.Output<List<GradientaiAgentDeployment>?> deployments;
  /// Description for the Agent
  late final pulumi.Output<String?> description;
  /// List of Functions
  late final pulumi.Output<List<GradientaiAgentFunction>?> functions;
  /// If case condition
  late final pulumi.Output<String?> ifCase;
  /// Instruction for the Agent
  late final pulumi.Output<String> instruction;
  /// K value
  late final pulumi.Output<int?> k;
  /// Ids of the knowledge base(s) to attach to the agent
  late final pulumi.Output<List<String>?> knowledgeBaseUuids;
  /// List of Knowledge Bases
  late final pulumi.Output<List<GradientaiAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  late final pulumi.Output<int?> maxTokens;
  /// Model UUID of the Agent
  late final pulumi.Output<String> modelUuid;
  /// Model of the Agent
  late final pulumi.Output<List<GradientaiAgentModel>> models;
  /// Name of the Agent
  late final pulumi.Output<String> name;
  /// OpenAI API Key information
  late final pulumi.Output<List<GradientaiAgentOpenAiApiKey>?> openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  late final pulumi.Output<String?> openAiKeyUuid;
  /// List of child agents
  late final pulumi.Output<List<GradientaiAgentParentAgent>> parentAgents;
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
  late final pulumi.Output<List<GradientaiAgentTemplate>?> templates;
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

  /// Creates a new [GradientaiAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GradientaiAgent]. {@macro pulumi_index_gradientai_agent_gradientai_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GradientaiAgent(
    String name, {
    GradientaiAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgent:GradientaiAgent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '4.80.1').merge(options),
        ) {
    agentGuardrails = registerOutput<List<GradientaiAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentAgentGuardrail>(guardedValue, (value) => GradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<GradientaiAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentAnthropicApiKey>(guardedValue, (value) => GradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<GradientaiAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentApiKeyInfo>(guardedValue, (value) => GradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<GradientaiAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentApiKey>(guardedValue, (value) => GradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<GradientaiAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChatbotIdentifier>(guardedValue, (value) => GradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<GradientaiAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChatbot>(guardedValue, (value) => GradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<GradientaiAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChildAgent>(guardedValue, (value) => GradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<GradientaiAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentDeployment>(guardedValue, (value) => GradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<GradientaiAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentFunction>(guardedValue, (value) => GradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<GradientaiAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentKnowledgeBase>(guardedValue, (value) => GradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<GradientaiAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentModel>(guardedValue, (value) => GradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<GradientaiAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentOpenAiApiKey>(guardedValue, (value) => GradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<GradientaiAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentParentAgent>(guardedValue, (value) => GradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
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
    templates = registerOutput<List<GradientaiAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentTemplate>(guardedValue, (value) => GradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }

  /// Gets an existing [GradientaiAgent] resource's state with the given [name] and [id].
  static GradientaiAgent get(
    String name,
    pulumi.Input<String> id, {
    GradientaiAgentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GradientaiAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GradientaiAgent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/gradientaiAgent:GradientaiAgent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentGuardrails = registerOutput<List<GradientaiAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentAgentGuardrail>(guardedValue, (value) => GradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<GradientaiAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentAnthropicApiKey>(guardedValue, (value) => GradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<GradientaiAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentApiKeyInfo>(guardedValue, (value) => GradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<GradientaiAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentApiKey>(guardedValue, (value) => GradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<GradientaiAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChatbotIdentifier>(guardedValue, (value) => GradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<GradientaiAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChatbot>(guardedValue, (value) => GradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<GradientaiAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChildAgent>(guardedValue, (value) => GradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<GradientaiAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentDeployment>(guardedValue, (value) => GradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<GradientaiAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentFunction>(guardedValue, (value) => GradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<GradientaiAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentKnowledgeBase>(guardedValue, (value) => GradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<GradientaiAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentModel>(guardedValue, (value) => GradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<GradientaiAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentOpenAiApiKey>(guardedValue, (value) => GradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<GradientaiAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentParentAgent>(guardedValue, (value) => GradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
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
    templates = registerOutput<List<GradientaiAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentTemplate>(guardedValue, (value) => GradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }

  /// Creates a typed reference to an existing [GradientaiAgent] resource.
  GradientaiAgent.reference(String urn)
    : super(
        'digitalocean:index/gradientaiAgent:GradientaiAgent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentGuardrails = registerOutput<List<GradientaiAgentAgentGuardrail>?>('agentGuardrails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentAgentGuardrail>(guardedValue, (value) => GradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicApiKeys = registerOutput<List<GradientaiAgentAnthropicApiKey>?>('anthropicApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentAnthropicApiKey>(guardedValue, (value) => GradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<GradientaiAgentApiKeyInfo>?>('apiKeyInfos', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentApiKeyInfo>(guardedValue, (value) => GradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); });
    apiKeys = registerOutput<List<GradientaiAgentApiKey>?>('apiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentApiKey>(guardedValue, (value) => GradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    chatbotIdentifiers = registerOutput<List<GradientaiAgentChatbotIdentifier>?>('chatbotIdentifiers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChatbotIdentifier>(guardedValue, (value) => GradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); });
    chatbots = registerOutput<List<GradientaiAgentChatbot>?>('chatbots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChatbot>(guardedValue, (value) => GradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); });
    childAgents = registerOutput<List<GradientaiAgentChildAgent>>('childAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentChildAgent>(guardedValue, (value) => GradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); });
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<GradientaiAgentDeployment>?>('deployments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentDeployment>(guardedValue, (value) => GradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    functions = registerOutput<List<GradientaiAgentFunction>?>('functions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentFunction>(guardedValue, (value) => GradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())); });
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    knowledgeBases = registerOutput<List<GradientaiAgentKnowledgeBase>>('knowledgeBases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentKnowledgeBase>(guardedValue, (value) => GradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); });
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<GradientaiAgentModel>>('models', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentModel>(guardedValue, (value) => GradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<GradientaiAgentOpenAiApiKey>?>('openAiApiKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentOpenAiApiKey>(guardedValue, (value) => GradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); });
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<GradientaiAgentParentAgent>>('parentAgents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentParentAgent>(guardedValue, (value) => GradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); });
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
    templates = registerOutput<List<GradientaiAgentTemplate>?>('templates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GradientaiAgentTemplate>(guardedValue, (value) => GradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); });
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }
}

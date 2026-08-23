import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_args.dart';
import 'genai_agent_state.dart';

class GenaiAgent extends pulumi.CustomResource {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  late final pulumi.Output<List<Map<String, dynamic>>?> agentGuardrails;
  /// Anthropic API Key information
  late final pulumi.Output<List<Map<String, dynamic>>?> anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  late final pulumi.Output<String?> anthropicKeyUuid;
  /// List of API Key Infos
  late final pulumi.Output<List<Map<String, dynamic>>?> apiKeyInfos;
  /// List of API Keys
  late final pulumi.Output<List<Map<String, dynamic>>?> apiKeys;
  /// List of Chatbot Identifiers
  late final pulumi.Output<List<Map<String, dynamic>>?> chatbotIdentifiers;
  /// ChatBot configuration
  late final pulumi.Output<List<Map<String, dynamic>>?> chatbots;
  /// List of child agents
  late final pulumi.Output<List<Map<String, dynamic>>> childAgents;
  /// Timestamp when the Agent was created
  late final pulumi.Output<String?> createdAt;
  /// List of API Key Infos
  late final pulumi.Output<List<Map<String, dynamic>>?> deployments;
  /// Description for the Agent
  late final pulumi.Output<String?> description;
  /// List of Functions
  late final pulumi.Output<List<Map<String, dynamic>>?> functions;
  /// If case condition
  late final pulumi.Output<String?> ifCase;
  /// Instruction for the Agent
  late final pulumi.Output<String> instruction;
  /// K value
  late final pulumi.Output<int?> k;
  /// Ids of the knowledge base(s) to attach to the agent
  late final pulumi.Output<List<String>?> knowledgeBaseUuids;
  /// List of Knowledge Bases
  late final pulumi.Output<List<Map<String, dynamic>>> knowledgeBases;
  /// Maximum tokens allowed
  late final pulumi.Output<int?> maxTokens;
  /// Model UUID of the Agent
  late final pulumi.Output<String> modelUuid;
  /// Model of the Agent
  late final pulumi.Output<List<Map<String, dynamic>>> models;
  /// Name of the Agent
  late final pulumi.Output<String> name;
  /// OpenAI API Key information
  late final pulumi.Output<List<Map<String, dynamic>>?> openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  late final pulumi.Output<String?> openAiKeyUuid;
  /// List of child agents
  late final pulumi.Output<List<Map<String, dynamic>>> parentAgents;
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
  late final pulumi.Output<List<Map<String, dynamic>>?> templates;
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentGuardrails = registerOutput<List<Map<String, dynamic>>?>('agentGuardrails');
    anthropicApiKeys = registerOutput<List<Map<String, dynamic>>?>('anthropicApiKeys');
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<Map<String, dynamic>>?>('apiKeyInfos');
    apiKeys = registerOutput<List<Map<String, dynamic>>?>('apiKeys');
    chatbotIdentifiers = registerOutput<List<Map<String, dynamic>>?>('chatbotIdentifiers');
    chatbots = registerOutput<List<Map<String, dynamic>>?>('chatbots');
    childAgents = registerOutput<List<Map<String, dynamic>>>('childAgents');
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<Map<String, dynamic>>?>('deployments');
    description = registerOutput<String?>('description');
    functions = registerOutput<List<Map<String, dynamic>>?>('functions');
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids');
    knowledgeBases = registerOutput<List<Map<String, dynamic>>>('knowledgeBases');
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<Map<String, dynamic>>>('models');
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<Map<String, dynamic>>?>('openAiApiKeys');
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<Map<String, dynamic>>>('parentAgents');
    projectId = registerOutput<String>('projectId');
    provideCitations = registerOutput<bool?>('provideCitations');
    region = registerOutput<String>('region');
    retrievalMethod = registerOutput<String?>('retrievalMethod');
    routeCreatedAt = registerOutput<String>('routeCreatedAt');
    routeCreatedBy = registerOutput<String?>('routeCreatedBy');
    routeName = registerOutput<String?>('routeName');
    routeUuid = registerOutput<String?>('routeUuid');
    tags = registerOutput<List<String>?>('tags');
    temperature = registerOutput<double?>('temperature');
    templates = registerOutput<List<Map<String, dynamic>>?>('templates');
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
  }) {
    return GenaiAgent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    agentGuardrails = registerOutput<List<Map<String, dynamic>>?>('agentGuardrails');
    anthropicApiKeys = registerOutput<List<Map<String, dynamic>>?>('anthropicApiKeys');
    anthropicKeyUuid = registerOutput<String?>('anthropicKeyUuid');
    apiKeyInfos = registerOutput<List<Map<String, dynamic>>?>('apiKeyInfos');
    apiKeys = registerOutput<List<Map<String, dynamic>>?>('apiKeys');
    chatbotIdentifiers = registerOutput<List<Map<String, dynamic>>?>('chatbotIdentifiers');
    chatbots = registerOutput<List<Map<String, dynamic>>?>('chatbots');
    childAgents = registerOutput<List<Map<String, dynamic>>>('childAgents');
    createdAt = registerOutput<String?>('createdAt');
    deployments = registerOutput<List<Map<String, dynamic>>?>('deployments');
    description = registerOutput<String?>('description');
    functions = registerOutput<List<Map<String, dynamic>>?>('functions');
    ifCase = registerOutput<String?>('ifCase');
    instruction = registerOutput<String>('instruction');
    k = registerOutput<int?>('k');
    knowledgeBaseUuids = registerOutput<List<String>?>('knowledgeBaseUuids');
    knowledgeBases = registerOutput<List<Map<String, dynamic>>>('knowledgeBases');
    maxTokens = registerOutput<int?>('maxTokens');
    modelUuid = registerOutput<String>('modelUuid');
    models = registerOutput<List<Map<String, dynamic>>>('models');
    this.name = registerOutput<String>('name');
    openAiApiKeys = registerOutput<List<Map<String, dynamic>>?>('openAiApiKeys');
    openAiKeyUuid = registerOutput<String?>('openAiKeyUuid');
    parentAgents = registerOutput<List<Map<String, dynamic>>>('parentAgents');
    projectId = registerOutput<String>('projectId');
    provideCitations = registerOutput<bool?>('provideCitations');
    region = registerOutput<String>('region');
    retrievalMethod = registerOutput<String?>('retrievalMethod');
    routeCreatedAt = registerOutput<String>('routeCreatedAt');
    routeCreatedBy = registerOutput<String?>('routeCreatedBy');
    routeName = registerOutput<String?>('routeName');
    routeUuid = registerOutput<String?>('routeUuid');
    tags = registerOutput<List<String>?>('tags');
    temperature = registerOutput<double?>('temperature');
    templates = registerOutput<List<Map<String, dynamic>>?>('templates');
    topP = registerOutput<double?>('topP');
    updatedAt = registerOutput<String>('updatedAt');
    url = registerOutput<String?>('url');
    userId = registerOutput<String?>('userId');
    workspaceUuid = registerOutput<String?>('workspaceUuid');
  }
}

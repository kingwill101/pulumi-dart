// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gradientai_agent_agent_guardrail.dart';
import 'gradientai_agent_anthropic_api_key.dart';
import 'gradientai_agent_api_key.dart';
import 'gradientai_agent_api_key_info.dart';
import 'gradientai_agent_chatbot.dart';
import 'gradientai_agent_chatbot_identifier.dart';
import 'gradientai_agent_child_agent.dart';
import 'gradientai_agent_deployment.dart';
import 'gradientai_agent_function.dart';
import 'gradientai_agent_knowledge_base.dart';
import 'gradientai_agent_model.dart';
import 'gradientai_agent_open_ai_api_key.dart';
import 'gradientai_agent_parent_agent.dart';
import 'gradientai_agent_template.dart';

/// {@template pulumi_index_gradientai_agent_gradientai_agent_args_doc}
/// The set of arguments for GradientaiAgent.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_agent_gradientai_agent_args_doc}
class GradientaiAgentArgs {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GradientaiAgentAgentGuardrail>>? agentGuardrails;
  /// Anthropic API Key information
  final pulumi.Input<List<GradientaiAgentAnthropicApiKey>>? anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  final pulumi.Input<String>? anthropicKeyUuid;
  /// List of API Key Infos
  final pulumi.Input<List<GradientaiAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GradientaiAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GradientaiAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GradientaiAgentChatbot>>? chatbots;
  /// List of child agents
  final pulumi.Input<List<GradientaiAgentChildAgent>>? childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String>? createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GradientaiAgentDeployment>>? deployments;
  /// Description for the Agent
  final pulumi.Input<String>? description;
  /// List of Functions
  final pulumi.Input<List<GradientaiAgentFunction>>? functions;
  /// If case condition
  final pulumi.Input<String>? ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int>? k;
  /// Ids of the knowledge base(s) to attach to the agent
  final pulumi.Input<List<String>>? knowledgeBaseUuids;
  /// List of Knowledge Bases
  final pulumi.Input<List<GradientaiAgentKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GradientaiAgentModel>>? models;
  /// Name of the Agent
  final pulumi.Input<String>? name;
  /// OpenAI API Key information
  final pulumi.Input<List<GradientaiAgentOpenAiApiKey>>? openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  final pulumi.Input<String>? openAiKeyUuid;
  /// List of child agents
  final pulumi.Input<List<GradientaiAgentParentAgent>>? parentAgents;
  /// Project ID of the Agent
  final pulumi.Input<String> projectId;
  /// Indicates if the agent should provide citations in responses
  final pulumi.Input<bool>? provideCitations;
  /// Region where the Agent is deployed
  final pulumi.Input<String> region;
  /// Retrieval method used
  final pulumi.Input<String>? retrievalMethod;
  /// User who created the route
  final pulumi.Input<String>? routeCreatedBy;
  /// Route name
  final pulumi.Input<String>? routeName;
  /// Route UUID
  final pulumi.Input<String>? routeUuid;
  /// List of Tags
  final pulumi.Input<List<String>>? tags;
  /// Agent temperature setting
  final pulumi.Input<double>? temperature;
  /// Agent Template
  final pulumi.Input<List<GradientaiAgentTemplate>>? templates;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// URL for the Agent
  final pulumi.Input<String>? url;
  /// User ID linked with the Agent
  final pulumi.Input<String>? userId;

  /// Creates a new [GradientaiAgentArgs].
  /// [agentGuardrails] AgentGuardrail represents a Guardrail attached to Gen AI Agent
  /// [anthropicApiKeys] Anthropic API Key information
  /// [anthropicKeyUuid] Optional Anthropic API key ID to use with Anthropic models
  /// [apiKeyInfos] List of API Key Infos
  /// [apiKeys] List of API Keys
  /// [chatbotIdentifiers] List of Chatbot Identifiers
  /// [chatbots] ChatBot configuration
  /// [childAgents] List of child agents
  /// [createdAt] Timestamp when the Agent was created
  /// [deployments] List of API Key Infos
  /// [description] Description for the Agent
  /// [functions] List of Functions
  /// [ifCase] If case condition
  /// [instruction] Instruction for the Agent
  /// [k] K value
  /// [knowledgeBaseUuids] Ids of the knowledge base(s) to attach to the agent
  /// [knowledgeBases] List of Knowledge Bases
  /// [maxTokens] Maximum tokens allowed
  /// [modelUuid] Model UUID of the Agent
  /// [models] Model of the Agent
  /// [name] Name of the Agent
  /// [openAiApiKeys] OpenAI API Key information
  /// [openAiKeyUuid] Optional OpenAI API key ID to use with OpenAI models
  /// [parentAgents] List of child agents
  /// [projectId] Project ID of the Agent
  /// [provideCitations] Indicates if the agent should provide citations in responses
  /// [region] Region where the Agent is deployed
  /// [retrievalMethod] Retrieval method used
  /// [routeCreatedBy] User who created the route
  /// [routeName] Route name
  /// [routeUuid] Route UUID
  /// [tags] List of Tags
  /// [temperature] Agent temperature setting
  /// [templates] Agent Template
  /// [topP] Top P sampling parameter
  /// [url] URL for the Agent
  /// [userId] User ID linked with the Agent
  GradientaiAgentArgs({
    pulumi.Output<List<GradientaiAgentAgentGuardrail>>? agentGuardrails,
    pulumi.Output<List<GradientaiAgentAnthropicApiKey>>? anthropicApiKeys,
    pulumi.Output<String>? anthropicKeyUuid,
    pulumi.Output<List<GradientaiAgentApiKeyInfo>>? apiKeyInfos,
    pulumi.Output<List<GradientaiAgentApiKey>>? apiKeys,
    pulumi.Output<List<GradientaiAgentChatbotIdentifier>>? chatbotIdentifiers,
    pulumi.Output<List<GradientaiAgentChatbot>>? chatbots,
    pulumi.Output<List<GradientaiAgentChildAgent>>? childAgents,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<GradientaiAgentDeployment>>? deployments,
    pulumi.Output<String>? description,
    pulumi.Output<List<GradientaiAgentFunction>>? functions,
    pulumi.Output<String>? ifCase,
    required pulumi.Output<String> instruction,
    pulumi.Output<int>? k,
    pulumi.Output<List<String>>? knowledgeBaseUuids,
    pulumi.Output<List<GradientaiAgentKnowledgeBase>>? knowledgeBases,
    pulumi.Output<int>? maxTokens,
    required pulumi.Output<String> modelUuid,
    pulumi.Output<List<GradientaiAgentModel>>? models,
    pulumi.Output<String>? name,
    pulumi.Output<List<GradientaiAgentOpenAiApiKey>>? openAiApiKeys,
    pulumi.Output<String>? openAiKeyUuid,
    pulumi.Output<List<GradientaiAgentParentAgent>>? parentAgents,
    required pulumi.Output<String> projectId,
    pulumi.Output<bool>? provideCitations,
    required pulumi.Output<String> region,
    pulumi.Output<String>? retrievalMethod,
    pulumi.Output<String>? routeCreatedBy,
    pulumi.Output<String>? routeName,
    pulumi.Output<String>? routeUuid,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<double>? temperature,
    pulumi.Output<List<GradientaiAgentTemplate>>? templates,
    pulumi.Output<double>? topP,
    pulumi.Output<String>? url,
    pulumi.Output<String>? userId,
  }) :
      agentGuardrails = pulumi.Input.asOptionalInput<List<GradientaiAgentAgentGuardrail>>(agentGuardrails),
      anthropicApiKeys = pulumi.Input.asOptionalInput<List<GradientaiAgentAnthropicApiKey>>(anthropicApiKeys),
      anthropicKeyUuid = pulumi.Input.asOptionalInput<String>(anthropicKeyUuid),
      apiKeyInfos = pulumi.Input.asOptionalInput<List<GradientaiAgentApiKeyInfo>>(apiKeyInfos),
      apiKeys = pulumi.Input.asOptionalInput<List<GradientaiAgentApiKey>>(apiKeys),
      chatbotIdentifiers = pulumi.Input.asOptionalInput<List<GradientaiAgentChatbotIdentifier>>(chatbotIdentifiers),
      chatbots = pulumi.Input.asOptionalInput<List<GradientaiAgentChatbot>>(chatbots),
      childAgents = pulumi.Input.asOptionalInput<List<GradientaiAgentChildAgent>>(childAgents),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      deployments = pulumi.Input.asOptionalInput<List<GradientaiAgentDeployment>>(deployments),
      description = pulumi.Input.asOptionalInput<String>(description),
      functions = pulumi.Input.asOptionalInput<List<GradientaiAgentFunction>>(functions),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      instruction = pulumi.Input.asInput<String>(instruction),
      k = pulumi.Input.asOptionalInput<int>(k),
      knowledgeBaseUuids = pulumi.Input.asOptionalInput<List<String>>(knowledgeBaseUuids),
      knowledgeBases = pulumi.Input.asOptionalInput<List<GradientaiAgentKnowledgeBase>>(knowledgeBases),
      maxTokens = pulumi.Input.asOptionalInput<int>(maxTokens),
      modelUuid = pulumi.Input.asInput<String>(modelUuid),
      models = pulumi.Input.asOptionalInput<List<GradientaiAgentModel>>(models),
      name = pulumi.Input.asOptionalInput<String>(name),
      openAiApiKeys = pulumi.Input.asOptionalInput<List<GradientaiAgentOpenAiApiKey>>(openAiApiKeys),
      openAiKeyUuid = pulumi.Input.asOptionalInput<String>(openAiKeyUuid),
      parentAgents = pulumi.Input.asOptionalInput<List<GradientaiAgentParentAgent>>(parentAgents),
      projectId = pulumi.Input.asInput<String>(projectId),
      provideCitations = pulumi.Input.asOptionalInput<bool>(provideCitations),
      region = pulumi.Input.asInput<String>(region),
      retrievalMethod = pulumi.Input.asOptionalInput<String>(retrievalMethod),
      routeCreatedBy = pulumi.Input.asOptionalInput<String>(routeCreatedBy),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      routeUuid = pulumi.Input.asOptionalInput<String>(routeUuid),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      temperature = pulumi.Input.asOptionalInput<double>(temperature),
      templates = pulumi.Input.asOptionalInput<List<GradientaiAgentTemplate>>(templates),
      topP = pulumi.Input.asOptionalInput<double>(topP),
      url = pulumi.Input.asOptionalInput<String>(url),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GradientaiAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anthropicKeyUuid': ?anthropicKeyUuid,
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GradientaiAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GradientaiAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GradientaiAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GradientaiAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GradientaiAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GradientaiAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'instruction': instruction,
      'k': ?k,
      'knowledgeBaseUuids': ?knowledgeBaseUuids,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GradientaiAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GradientaiAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GradientaiAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiKeyUuid': ?openAiKeyUuid,
      'parentAgents': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GradientaiAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'provideCitations': ?provideCitations,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GradientaiAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GradientaiAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GradientaiAgentArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentArgs(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Output.create<List<GradientaiAgentAgentGuardrail>>(pulumi.Input.decodeList<GradientaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Output.create<List<GradientaiAgentAnthropicApiKey>>(pulumi.Input.decodeList<GradientaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      anthropicKeyUuid: map['anthropicKeyUuid'] == null ? null : pulumi.Output.create<String>(map['anthropicKeyUuid'] as String),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Output.create<List<GradientaiAgentApiKeyInfo>>(pulumi.Input.decodeList<GradientaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Output.create<List<GradientaiAgentApiKey>>(pulumi.Input.decodeList<GradientaiAgentApiKey>(map['apiKeys'], (value) => GradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Output.create<List<GradientaiAgentChatbotIdentifier>>(pulumi.Input.decodeList<GradientaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))),
      chatbots: map['chatbots'] == null ? null : pulumi.Output.create<List<GradientaiAgentChatbot>>(pulumi.Input.decodeList<GradientaiAgentChatbot>(map['chatbots'], (value) => GradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))),
      childAgents: map['childAgents'] == null ? null : pulumi.Output.create<List<GradientaiAgentChildAgent>>(pulumi.Input.decodeList<GradientaiAgentChildAgent>(map['childAgents'], (value) => GradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      deployments: map['deployments'] == null ? null : pulumi.Output.create<List<GradientaiAgentDeployment>>(pulumi.Input.decodeList<GradientaiAgentDeployment>(map['deployments'], (value) => GradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functions: map['functions'] == null ? null : pulumi.Output.create<List<GradientaiAgentFunction>>(pulumi.Input.decodeList<GradientaiAgentFunction>(map['functions'], (value) => GradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))),
      ifCase: map['ifCase'] == null ? null : pulumi.Output.create<String>(map['ifCase'] as String),
      instruction: pulumi.Output.create<String>(map['instruction'] as String),
      k: map['k'] == null ? null : pulumi.Output.create<int>(map['k'] as int),
      knowledgeBaseUuids: map['knowledgeBaseUuids'] == null ? null : pulumi.Output.create<List<String>>((map['knowledgeBaseUuids'] as List).cast<String>()),
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Output.create<List<GradientaiAgentKnowledgeBase>>(pulumi.Input.decodeList<GradientaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      maxTokens: map['maxTokens'] == null ? null : pulumi.Output.create<int>(map['maxTokens'] as int),
      modelUuid: pulumi.Output.create<String>(map['modelUuid'] as String),
      models: map['models'] == null ? null : pulumi.Output.create<List<GradientaiAgentModel>>(pulumi.Input.decodeList<GradientaiAgentModel>(map['models'], (value) => GradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Output.create<List<GradientaiAgentOpenAiApiKey>>(pulumi.Input.decodeList<GradientaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      openAiKeyUuid: map['openAiKeyUuid'] == null ? null : pulumi.Output.create<String>(map['openAiKeyUuid'] as String),
      parentAgents: map['parentAgents'] == null ? null : pulumi.Output.create<List<GradientaiAgentParentAgent>>(pulumi.Input.decodeList<GradientaiAgentParentAgent>(map['parentAgents'], (value) => GradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
      provideCitations: map['provideCitations'] == null ? null : pulumi.Output.create<bool>(map['provideCitations'] as bool),
      region: pulumi.Output.create<String>(map['region'] as String),
      retrievalMethod: map['retrievalMethod'] == null ? null : pulumi.Output.create<String>(map['retrievalMethod'] as String),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : pulumi.Output.create<String>(map['routeCreatedBy'] as String),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
      routeUuid: map['routeUuid'] == null ? null : pulumi.Output.create<String>(map['routeUuid'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      temperature: map['temperature'] == null ? null : pulumi.Output.create<double>(map['temperature'] as double),
      templates: map['templates'] == null ? null : pulumi.Output.create<List<GradientaiAgentTemplate>>(pulumi.Input.decodeList<GradientaiAgentTemplate>(map['templates'], (value) => GradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      topP: map['topP'] == null ? null : pulumi.Output.create<double>(map['topP'] as double),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}


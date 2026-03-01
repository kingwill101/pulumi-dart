// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'genai_agent_agent_guardrail.dart';
import 'genai_agent_anthropic_api_key.dart';
import 'genai_agent_api_key.dart';
import 'genai_agent_api_key_info.dart';
import 'genai_agent_chatbot.dart';
import 'genai_agent_chatbot_identifier.dart';
import 'genai_agent_child_agent.dart';
import 'genai_agent_deployment.dart';
import 'genai_agent_function.dart';
import 'genai_agent_knowledge_base.dart';
import 'genai_agent_model.dart';
import 'genai_agent_open_ai_api_key.dart';
import 'genai_agent_parent_agent.dart';
import 'genai_agent_template.dart';

/// Input properties used for looking up and filtering GenaiAgent resources.
class GenaiAgentState {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GenaiAgentAgentGuardrail>>? agentGuardrails;
  /// Anthropic API Key information
  final pulumi.Input<List<GenaiAgentAnthropicApiKey>>? anthropicApiKeys;
  /// Optional Anthropic API key ID to use with Anthropic models
  final pulumi.Input<String>? anthropicKeyUuid;
  /// List of API Key Infos
  final pulumi.Input<List<GenaiAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GenaiAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GenaiAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GenaiAgentChatbot>>? chatbots;
  /// List of child agents
  final pulumi.Input<List<GenaiAgentChildAgent>>? childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String>? createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GenaiAgentDeployment>>? deployments;
  /// Description for the Agent
  final pulumi.Input<String>? description;
  /// List of Functions
  final pulumi.Input<List<GenaiAgentFunction>>? functions;
  /// If case condition
  final pulumi.Input<String>? ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String>? instruction;
  /// K value
  final pulumi.Input<int>? k;
  /// Ids of the knowledge base(s) to attach to the agent
  final pulumi.Input<List<String>>? knowledgeBaseUuids;
  /// List of Knowledge Bases
  final pulumi.Input<List<GenaiAgentKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String>? modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GenaiAgentModel>>? models;
  /// Name of the Agent
  final pulumi.Input<String>? name;
  /// OpenAI API Key information
  final pulumi.Input<List<GenaiAgentOpenAiApiKey>>? openAiApiKeys;
  /// Optional OpenAI API key ID to use with OpenAI models
  final pulumi.Input<String>? openAiKeyUuid;
  /// List of child agents
  final pulumi.Input<List<GenaiAgentParentAgent>>? parentAgents;
  /// Project ID of the Agent
  final pulumi.Input<String>? projectId;
  /// Indicates if the agent should provide citations in responses
  final pulumi.Input<bool>? provideCitations;
  /// Region where the Agent is deployed
  final pulumi.Input<String>? region;
  /// Retrieval method used
  final pulumi.Input<String>? retrievalMethod;
  /// Timestamp when the route was created
  final pulumi.Input<String>? routeCreatedAt;
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
  final pulumi.Input<List<GenaiAgentTemplate>>? templates;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String>? updatedAt;
  /// URL for the Agent
  final pulumi.Input<String>? url;
  /// User ID linked with the Agent
  final pulumi.Input<String>? userId;

  /// Creates a new [GenaiAgentState].
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
  /// [routeCreatedAt] Timestamp when the route was created
  /// [routeCreatedBy] User who created the route
  /// [routeName] Route name
  /// [routeUuid] Route UUID
  /// [tags] List of Tags
  /// [temperature] Agent temperature setting
  /// [templates] Agent Template
  /// [topP] Top P sampling parameter
  /// [updatedAt] Timestamp when the Agent was updated
  /// [url] URL for the Agent
  /// [userId] User ID linked with the Agent
  GenaiAgentState({
    pulumi.Output<List<GenaiAgentAgentGuardrail>>? agentGuardrails,
    pulumi.Output<List<GenaiAgentAnthropicApiKey>>? anthropicApiKeys,
    pulumi.Output<String>? anthropicKeyUuid,
    pulumi.Output<List<GenaiAgentApiKeyInfo>>? apiKeyInfos,
    pulumi.Output<List<GenaiAgentApiKey>>? apiKeys,
    pulumi.Output<List<GenaiAgentChatbotIdentifier>>? chatbotIdentifiers,
    pulumi.Output<List<GenaiAgentChatbot>>? chatbots,
    pulumi.Output<List<GenaiAgentChildAgent>>? childAgents,
    pulumi.Output<String>? createdAt,
    pulumi.Output<List<GenaiAgentDeployment>>? deployments,
    pulumi.Output<String>? description,
    pulumi.Output<List<GenaiAgentFunction>>? functions,
    pulumi.Output<String>? ifCase,
    pulumi.Output<String>? instruction,
    pulumi.Output<int>? k,
    pulumi.Output<List<String>>? knowledgeBaseUuids,
    pulumi.Output<List<GenaiAgentKnowledgeBase>>? knowledgeBases,
    pulumi.Output<int>? maxTokens,
    pulumi.Output<String>? modelUuid,
    pulumi.Output<List<GenaiAgentModel>>? models,
    pulumi.Output<String>? name,
    pulumi.Output<List<GenaiAgentOpenAiApiKey>>? openAiApiKeys,
    pulumi.Output<String>? openAiKeyUuid,
    pulumi.Output<List<GenaiAgentParentAgent>>? parentAgents,
    pulumi.Output<String>? projectId,
    pulumi.Output<bool>? provideCitations,
    pulumi.Output<String>? region,
    pulumi.Output<String>? retrievalMethod,
    pulumi.Output<String>? routeCreatedAt,
    pulumi.Output<String>? routeCreatedBy,
    pulumi.Output<String>? routeName,
    pulumi.Output<String>? routeUuid,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<double>? temperature,
    pulumi.Output<List<GenaiAgentTemplate>>? templates,
    pulumi.Output<double>? topP,
    pulumi.Output<String>? updatedAt,
    pulumi.Output<String>? url,
    pulumi.Output<String>? userId,
  }) :
      agentGuardrails = pulumi.Input.asOptionalInput<List<GenaiAgentAgentGuardrail>>(agentGuardrails),
      anthropicApiKeys = pulumi.Input.asOptionalInput<List<GenaiAgentAnthropicApiKey>>(anthropicApiKeys),
      anthropicKeyUuid = pulumi.Input.asOptionalInput<String>(anthropicKeyUuid),
      apiKeyInfos = pulumi.Input.asOptionalInput<List<GenaiAgentApiKeyInfo>>(apiKeyInfos),
      apiKeys = pulumi.Input.asOptionalInput<List<GenaiAgentApiKey>>(apiKeys),
      chatbotIdentifiers = pulumi.Input.asOptionalInput<List<GenaiAgentChatbotIdentifier>>(chatbotIdentifiers),
      chatbots = pulumi.Input.asOptionalInput<List<GenaiAgentChatbot>>(chatbots),
      childAgents = pulumi.Input.asOptionalInput<List<GenaiAgentChildAgent>>(childAgents),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      deployments = pulumi.Input.asOptionalInput<List<GenaiAgentDeployment>>(deployments),
      description = pulumi.Input.asOptionalInput<String>(description),
      functions = pulumi.Input.asOptionalInput<List<GenaiAgentFunction>>(functions),
      ifCase = pulumi.Input.asOptionalInput<String>(ifCase),
      instruction = pulumi.Input.asOptionalInput<String>(instruction),
      k = pulumi.Input.asOptionalInput<int>(k),
      knowledgeBaseUuids = pulumi.Input.asOptionalInput<List<String>>(knowledgeBaseUuids),
      knowledgeBases = pulumi.Input.asOptionalInput<List<GenaiAgentKnowledgeBase>>(knowledgeBases),
      maxTokens = pulumi.Input.asOptionalInput<int>(maxTokens),
      modelUuid = pulumi.Input.asOptionalInput<String>(modelUuid),
      models = pulumi.Input.asOptionalInput<List<GenaiAgentModel>>(models),
      name = pulumi.Input.asOptionalInput<String>(name),
      openAiApiKeys = pulumi.Input.asOptionalInput<List<GenaiAgentOpenAiApiKey>>(openAiApiKeys),
      openAiKeyUuid = pulumi.Input.asOptionalInput<String>(openAiKeyUuid),
      parentAgents = pulumi.Input.asOptionalInput<List<GenaiAgentParentAgent>>(parentAgents),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      provideCitations = pulumi.Input.asOptionalInput<bool>(provideCitations),
      region = pulumi.Input.asOptionalInput<String>(region),
      retrievalMethod = pulumi.Input.asOptionalInput<String>(retrievalMethod),
      routeCreatedAt = pulumi.Input.asOptionalInput<String>(routeCreatedAt),
      routeCreatedBy = pulumi.Input.asOptionalInput<String>(routeCreatedBy),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      routeUuid = pulumi.Input.asOptionalInput<String>(routeUuid),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      temperature = pulumi.Input.asOptionalInput<double>(temperature),
      templates = pulumi.Input.asOptionalInput<List<GenaiAgentTemplate>>(templates),
      topP = pulumi.Input.asOptionalInput<double>(topP),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt),
      url = pulumi.Input.asOptionalInput<String>(url),
      userId = pulumi.Input.asOptionalInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GenaiAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GenaiAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'anthropicKeyUuid': ?anthropicKeyUuid,
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GenaiAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GenaiAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GenaiAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GenaiAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GenaiAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GenaiAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GenaiAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'instruction': ?instruction,
      'k': ?k,
      'knowledgeBaseUuids': ?knowledgeBaseUuids,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GenaiAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'modelUuid': ?modelUuid,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GenaiAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GenaiAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiKeyUuid': ?openAiKeyUuid,
      'parentAgents': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GenaiAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': ?projectId,
      'provideCitations': ?provideCitations,
      'region': ?region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': ?routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GenaiAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GenaiAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'updatedAt': ?updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GenaiAgentState.fromMap(Map<String, dynamic> map) {
    return GenaiAgentState(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Output.create<List<GenaiAgentAgentGuardrail>>(pulumi.Input.decodeList<GenaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Output.create<List<GenaiAgentAnthropicApiKey>>(pulumi.Input.decodeList<GenaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      anthropicKeyUuid: map['anthropicKeyUuid'] == null ? null : pulumi.Output.create<String>(map['anthropicKeyUuid'] as String),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Output.create<List<GenaiAgentApiKeyInfo>>(pulumi.Input.decodeList<GenaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Output.create<List<GenaiAgentApiKey>>(pulumi.Input.decodeList<GenaiAgentApiKey>(map['apiKeys'], (value) => GenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Output.create<List<GenaiAgentChatbotIdentifier>>(pulumi.Input.decodeList<GenaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))),
      chatbots: map['chatbots'] == null ? null : pulumi.Output.create<List<GenaiAgentChatbot>>(pulumi.Input.decodeList<GenaiAgentChatbot>(map['chatbots'], (value) => GenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))),
      childAgents: map['childAgents'] == null ? null : pulumi.Output.create<List<GenaiAgentChildAgent>>(pulumi.Input.decodeList<GenaiAgentChildAgent>(map['childAgents'], (value) => GenaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      deployments: map['deployments'] == null ? null : pulumi.Output.create<List<GenaiAgentDeployment>>(pulumi.Input.decodeList<GenaiAgentDeployment>(map['deployments'], (value) => GenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      functions: map['functions'] == null ? null : pulumi.Output.create<List<GenaiAgentFunction>>(pulumi.Input.decodeList<GenaiAgentFunction>(map['functions'], (value) => GenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))),
      ifCase: map['ifCase'] == null ? null : pulumi.Output.create<String>(map['ifCase'] as String),
      instruction: map['instruction'] == null ? null : pulumi.Output.create<String>(map['instruction'] as String),
      k: map['k'] == null ? null : pulumi.Output.create<int>(map['k'] as int),
      knowledgeBaseUuids: map['knowledgeBaseUuids'] == null ? null : pulumi.Output.create<List<String>>((map['knowledgeBaseUuids'] as List).cast<String>()),
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Output.create<List<GenaiAgentKnowledgeBase>>(pulumi.Input.decodeList<GenaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      maxTokens: map['maxTokens'] == null ? null : pulumi.Output.create<int>(map['maxTokens'] as int),
      modelUuid: map['modelUuid'] == null ? null : pulumi.Output.create<String>(map['modelUuid'] as String),
      models: map['models'] == null ? null : pulumi.Output.create<List<GenaiAgentModel>>(pulumi.Input.decodeList<GenaiAgentModel>(map['models'], (value) => GenaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Output.create<List<GenaiAgentOpenAiApiKey>>(pulumi.Input.decodeList<GenaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      openAiKeyUuid: map['openAiKeyUuid'] == null ? null : pulumi.Output.create<String>(map['openAiKeyUuid'] as String),
      parentAgents: map['parentAgents'] == null ? null : pulumi.Output.create<List<GenaiAgentParentAgent>>(pulumi.Input.decodeList<GenaiAgentParentAgent>(map['parentAgents'], (value) => GenaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      provideCitations: map['provideCitations'] == null ? null : pulumi.Output.create<bool>(map['provideCitations'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retrievalMethod: map['retrievalMethod'] == null ? null : pulumi.Output.create<String>(map['retrievalMethod'] as String),
      routeCreatedAt: map['routeCreatedAt'] == null ? null : pulumi.Output.create<String>(map['routeCreatedAt'] as String),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : pulumi.Output.create<String>(map['routeCreatedBy'] as String),
      routeName: map['routeName'] == null ? null : pulumi.Output.create<String>(map['routeName'] as String),
      routeUuid: map['routeUuid'] == null ? null : pulumi.Output.create<String>(map['routeUuid'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      temperature: map['temperature'] == null ? null : pulumi.Output.create<double>(map['temperature'] as double),
      templates: map['templates'] == null ? null : pulumi.Output.create<List<GenaiAgentTemplate>>(pulumi.Input.decodeList<GenaiAgentTemplate>(map['templates'], (value) => GenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      topP: map['topP'] == null ? null : pulumi.Output.create<double>(map['topP'] as double),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}


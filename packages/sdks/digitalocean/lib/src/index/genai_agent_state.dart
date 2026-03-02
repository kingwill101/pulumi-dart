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
    this.agentGuardrails,
    this.anthropicApiKeys,
    this.anthropicKeyUuid,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    this.childAgents,
    this.createdAt,
    this.deployments,
    this.description,
    this.functions,
    this.ifCase,
    this.instruction,
    this.k,
    this.knowledgeBaseUuids,
    this.knowledgeBases,
    this.maxTokens,
    this.modelUuid,
    this.models,
    this.name,
    this.openAiApiKeys,
    this.openAiKeyUuid,
    this.parentAgents,
    this.projectId,
    this.provideCitations,
    this.region,
    this.retrievalMethod,
    this.routeCreatedAt,
    this.routeCreatedBy,
    this.routeName,
    this.routeUuid,
    this.tags,
    this.temperature,
    this.templates,
    this.topP,
    this.updatedAt,
    this.url,
    this.userId,
  });

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
      agentGuardrails: map['agentGuardrails'] == null ? null : (pulumi.Input.decodeList<GenaiAgentAgentGuardrail>(map['agentGuardrails']!, (value) => GenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GenaiAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      anthropicKeyUuid: map['anthropicKeyUuid'] == null ? null : (map['anthropicKeyUuid']! as String).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GenaiAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GenaiAgentApiKey>(map['apiKeys']!, (value) => GenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GenaiAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GenaiAgentChatbot>(map['chatbots']!, (value) => GenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      childAgents: map['childAgents'] == null ? null : (pulumi.Input.decodeList<GenaiAgentChildAgent>(map['childAgents']!, (value) => GenaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GenaiAgentDeployment>(map['deployments']!, (value) => GenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      functions: map['functions'] == null ? null : (pulumi.Input.decodeList<GenaiAgentFunction>(map['functions']!, (value) => GenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifCase: map['ifCase'] == null ? null : (map['ifCase']! as String).input(),
      instruction: map['instruction'] == null ? null : (map['instruction']! as String).input(),
      k: map['k'] == null ? null : (map['k']! as int).input(),
      knowledgeBaseUuids: map['knowledgeBaseUuids'] == null ? null : ((map['knowledgeBaseUuids']! as List).cast<String>()).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GenaiAgentKnowledgeBase>(map['knowledgeBases']!, (value) => GenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens']! as int).input(),
      modelUuid: map['modelUuid'] == null ? null : (map['modelUuid']! as String).input(),
      models: map['models'] == null ? null : (pulumi.Input.decodeList<GenaiAgentModel>(map['models']!, (value) => GenaiAgentModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : (pulumi.Input.decodeList<GenaiAgentOpenAiApiKey>(map['openAiApiKeys']!, (value) => GenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      openAiKeyUuid: map['openAiKeyUuid'] == null ? null : (map['openAiKeyUuid']! as String).input(),
      parentAgents: map['parentAgents'] == null ? null : (pulumi.Input.decodeList<GenaiAgentParentAgent>(map['parentAgents']!, (value) => GenaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      provideCitations: map['provideCitations'] == null ? null : (map['provideCitations']! as bool).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      retrievalMethod: map['retrievalMethod'] == null ? null : (map['retrievalMethod']! as String).input(),
      routeCreatedAt: map['routeCreatedAt'] == null ? null : (map['routeCreatedAt']! as String).input(),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : (map['routeCreatedBy']! as String).input(),
      routeName: map['routeName'] == null ? null : (map['routeName']! as String).input(),
      routeUuid: map['routeUuid'] == null ? null : (map['routeUuid']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      temperature: map['temperature'] == null ? null : (map['temperature']! as double).input(),
      templates: map['templates'] == null ? null : (pulumi.Input.decodeList<GenaiAgentTemplate>(map['templates']!, (value) => GenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      topP: map['topP'] == null ? null : (map['topP']! as double).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}


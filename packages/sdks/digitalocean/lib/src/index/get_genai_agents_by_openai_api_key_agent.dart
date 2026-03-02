// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_by_openai_api_key_agent_agent_guardrail.dart';
import 'get_genai_agents_by_openai_api_key_agent_anthropic_api_key.dart';
import 'get_genai_agents_by_openai_api_key_agent_api_key.dart';
import 'get_genai_agents_by_openai_api_key_agent_api_key_info.dart';
import 'get_genai_agents_by_openai_api_key_agent_chatbot.dart';
import 'get_genai_agents_by_openai_api_key_agent_chatbot_identifier.dart';
import 'get_genai_agents_by_openai_api_key_agent_child_agent.dart';
import 'get_genai_agents_by_openai_api_key_agent_deployment.dart';
import 'get_genai_agents_by_openai_api_key_agent_function.dart';
import 'get_genai_agents_by_openai_api_key_agent_knowledge_base.dart';
import 'get_genai_agents_by_openai_api_key_agent_model.dart';
import 'get_genai_agents_by_openai_api_key_agent_open_ai_api_key.dart';
import 'get_genai_agents_by_openai_api_key_agent_parent_agent.dart';
import 'get_genai_agents_by_openai_api_key_agent_template.dart';

class GetGenaiAgentsByOpenaiApiKeyAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail>>? agentGuardrails;
  /// ID of the Agent to retrieve
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentChatbot>>? chatbots;
  /// List of child agents
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String> createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentDeployment>>? deployments;
  /// Description for the Agent
  final pulumi.Input<String>? description;
  /// List of API Key Infos
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentFunction>>? functions;
  /// If case condition
  final pulumi.Input<String>? ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int>? k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentModel>> models;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// OpenAI API Key information
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>>? openAiApiKeys;
  /// List of parent agents
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent>> parentAgents;
  /// Project ID of the Agent
  final pulumi.Input<String> projectId;
  /// Region where the Agent is deployed
  final pulumi.Input<String> region;
  /// Retrieval method used
  final pulumi.Input<String>? retrievalMethod;
  /// Timestamp when the route was created
  final pulumi.Input<String> routeCreatedAt;
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
  final pulumi.Input<List<GetGenaiAgentsByOpenaiApiKeyAgentTemplate>>? templates;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String> updatedAt;
  /// URL for the Agent
  final pulumi.Input<String>? url;
  /// User ID linked with the Agent
  final pulumi.Input<String>? userId;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgent].
  /// [agentGuardrails] AgentGuardrail represents a Guardrail attached to Gen AI Agent
  /// [agentId] ID of the Agent to retrieve
  /// [anthropicApiKeys] Anthropic API Key information
  /// [apiKeyInfos] List of API Key Infos
  /// [apiKeys] List of API Keys
  /// [chatbotIdentifiers] List of Chatbot Identifiers
  /// [chatbots] ChatBot configuration
  /// [childAgents] List of child agents
  /// [createdAt] Timestamp when the Agent was created
  /// [deployments] List of API Key Infos
  /// [description] Description for the Agent
  /// [functions] List of API Key Infos
  /// [ifCase] If case condition
  /// [instruction] Instruction for the Agent
  /// [k] K value
  /// [knowledgeBases] List of Knowledge Bases
  /// [maxTokens] Maximum tokens allowed
  /// [modelUuid] Model UUID of the Agent
  /// [models] Model of the Agent
  /// [name] Name of the Agent
  /// [openAiApiKeys] OpenAI API Key information
  /// [parentAgents] List of parent agents
  /// [projectId] Project ID of the Agent
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
  GetGenaiAgentsByOpenaiApiKeyAgent({
    this.agentGuardrails,
    required this.agentId,
    this.anthropicApiKeys,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    required this.childAgents,
    required this.createdAt,
    this.deployments,
    this.description,
    this.functions,
    this.ifCase,
    required this.instruction,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    required this.modelUuid,
    required this.models,
    required this.name,
    this.openAiApiKeys,
    required this.parentAgents,
    required this.projectId,
    required this.region,
    this.retrievalMethod,
    required this.routeCreatedAt,
    this.routeCreatedBy,
    this.routeName,
    this.routeUuid,
    this.tags,
    this.temperature,
    this.templates,
    this.topP,
    required this.updatedAt,
    this.url,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': pulumi.Input.mapInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'instruction': instruction,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.mapInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentAgents': pulumi.Input.mapInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GetGenaiAgentsByOpenaiApiKeyAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'updatedAt': updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGenaiAgentsByOpenaiApiKeyAgent.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgent(
      agentGuardrails: map['agentGuardrails'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail>(map['agentGuardrails']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      agentId: (map['agentId'] as String).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKey>(map['apiKeys']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbot>(map['chatbots']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      childAgents: (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent>(map['childAgents'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: (map['createdAt'] as String).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentDeployment>(map['deployments']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      functions: map['functions'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentFunction>(map['functions']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifCase: map['ifCase'] == null ? null : (map['ifCase']! as String).input(),
      instruction: (map['instruction'] as String).input(),
      k: map['k'] == null ? null : (map['k']! as int).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase>(map['knowledgeBases']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens']! as int).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      models: (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentModel>(map['models'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>(map['openAiApiKeys']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentAgents: (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent>(map['parentAgents'], (value) => GetGenaiAgentsByOpenaiApiKeyAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
      retrievalMethod: map['retrievalMethod'] == null ? null : (map['retrievalMethod']! as String).input(),
      routeCreatedAt: (map['routeCreatedAt'] as String).input(),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : (map['routeCreatedBy']! as String).input(),
      routeName: map['routeName'] == null ? null : (map['routeName']! as String).input(),
      routeUuid: map['routeUuid'] == null ? null : (map['routeUuid']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      temperature: map['temperature'] == null ? null : (map['temperature']! as double).input(),
      templates: map['templates'] == null ? null : (pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplate>(map['templates']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      topP: map['topP'] == null ? null : (map['topP']! as double).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}


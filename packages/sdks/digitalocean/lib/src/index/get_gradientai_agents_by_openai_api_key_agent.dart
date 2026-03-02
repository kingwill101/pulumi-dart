// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_by_openai_api_key_agent_agent_guardrail.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_anthropic_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_api_key_info.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_chatbot.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_chatbot_identifier.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_child_agent.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_deployment.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_function.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_knowledge_base.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_model.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_open_ai_api_key.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_parent_agent.dart';
import 'get_gradientai_agents_by_openai_api_key_agent_template.dart';

class GetGradientaiAgentsByOpenaiApiKeyAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentAgentGuardrail>>? agentGuardrails;
  /// ID of the Agent to retrieve
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>>? anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentApiKeyInfo>>? apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentApiKey>>? apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>>? chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChatbot>>? chatbots;
  /// List of child agents
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String> createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentDeployment>>? deployments;
  /// Description for the Agent
  final pulumi.Input<String>? description;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentFunction>>? functions;
  /// If case condition
  final pulumi.Input<String>? ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int>? k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentKnowledgeBase>>? knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int>? maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentModel>> models;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// OpenAI API Key information
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>>? openAiApiKeys;
  /// List of parent agents
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent>> parentAgents;
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
  final pulumi.Input<List<GetGradientaiAgentsByOpenaiApiKeyAgentTemplate>>? templates;
  /// Top P sampling parameter
  final pulumi.Input<double>? topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String> updatedAt;
  /// URL for the Agent
  final pulumi.Input<String>? url;
  /// User ID linked with the Agent
  final pulumi.Input<String>? userId;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgent].
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
  GetGradientaiAgentsByOpenaiApiKeyAgent({
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
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': pulumi.Input.mapInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'instruction': instruction,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.mapInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentAgents': pulumi.Input.mapInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GetGradientaiAgentsByOpenaiApiKeyAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetGradientaiAgentsByOpenaiApiKeyAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'updatedAt': updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGradientaiAgentsByOpenaiApiKeyAgent.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgent(
      agentGuardrails: map['agentGuardrails'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentAgentGuardrail>(map['agentGuardrails']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      agentId: (map['agentId'] as String).input(),
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: map['apiKeys'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentApiKey>(map['apiKeys']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: map['chatbots'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChatbot>(map['chatbots']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      childAgents: (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent>(map['childAgents'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: (map['createdAt'] as String).input(),
      deployments: map['deployments'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentDeployment>(map['deployments']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      functions: map['functions'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentFunction>(map['functions']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifCase: map['ifCase'] == null ? null : (map['ifCase']! as String).input(),
      instruction: (map['instruction'] as String).input(),
      k: map['k'] == null ? null : (map['k']! as int).input(),
      knowledgeBases: map['knowledgeBases'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentKnowledgeBase>(map['knowledgeBases']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: map['maxTokens'] == null ? null : (map['maxTokens']! as int).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      models: (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentModel>(map['models'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      openAiApiKeys: map['openAiApiKeys'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>(map['openAiApiKeys']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentAgents: (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent>(map['parentAgents'], (value) => GetGradientaiAgentsByOpenaiApiKeyAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
      retrievalMethod: map['retrievalMethod'] == null ? null : (map['retrievalMethod']! as String).input(),
      routeCreatedAt: (map['routeCreatedAt'] as String).input(),
      routeCreatedBy: map['routeCreatedBy'] == null ? null : (map['routeCreatedBy']! as String).input(),
      routeName: map['routeName'] == null ? null : (map['routeName']! as String).input(),
      routeUuid: map['routeUuid'] == null ? null : (map['routeUuid']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      temperature: map['temperature'] == null ? null : (map['temperature']! as double).input(),
      templates: map['templates'] == null ? null : (pulumi.Input.decodeList<GetGradientaiAgentsByOpenaiApiKeyAgentTemplate>(map['templates']!, (value) => GetGradientaiAgentsByOpenaiApiKeyAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      topP: map['topP'] == null ? null : (map['topP']! as double).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}


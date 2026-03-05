// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agents_agent_agent_guardrail.dart';
import 'get_genai_agents_agent_anthropic_api_key.dart';
import 'get_genai_agents_agent_api_key.dart';
import 'get_genai_agents_agent_api_key_info.dart';
import 'get_genai_agents_agent_chatbot.dart';
import 'get_genai_agents_agent_chatbot_identifier.dart';
import 'get_genai_agents_agent_child_agent.dart';
import 'get_genai_agents_agent_deployment.dart';
import 'get_genai_agents_agent_function.dart';
import 'get_genai_agents_agent_knowledge_base.dart';
import 'get_genai_agents_agent_model.dart';
import 'get_genai_agents_agent_open_ai_api_key.dart';
import 'get_genai_agents_agent_parent_agent.dart';
import 'get_genai_agents_agent_template.dart';

class GetGenaiAgentsAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GetGenaiAgentsAgentAgentGuardrail>> agentGuardrails;
  /// ID of the Agent to retrieve
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetGenaiAgentsAgentAnthropicApiKey>> anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetGenaiAgentsAgentApiKeyInfo>> apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetGenaiAgentsAgentApiKey>> apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetGenaiAgentsAgentChatbotIdentifier>> chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetGenaiAgentsAgentChatbot>> chatbots;
  /// List of child agents
  final pulumi.Input<List<GetGenaiAgentsAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String> createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GetGenaiAgentsAgentDeployment>> deployments;
  /// Description for the Agent
  final pulumi.Input<String> description;
  /// List of API Key Infos
  final pulumi.Input<List<GetGenaiAgentsAgentFunction>> functions;
  /// If case condition
  final pulumi.Input<String> ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int> k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetGenaiAgentsAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int> maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GetGenaiAgentsAgentModel>> models;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// OpenAI API Key information
  final pulumi.Input<List<GetGenaiAgentsAgentOpenAiApiKey>> openAiApiKeys;
  /// List of parent agents
  final pulumi.Input<List<GetGenaiAgentsAgentParentAgent>> parentAgents;
  /// Project ID of the Agent
  final pulumi.Input<String> projectId;
  /// Region where the Agent is deployed
  final pulumi.Input<String> region;
  /// Retrieval method used
  final pulumi.Input<String> retrievalMethod;
  /// Timestamp when the route was created
  final pulumi.Input<String> routeCreatedAt;
  /// User who created the route
  final pulumi.Input<String> routeCreatedBy;
  /// Route name
  final pulumi.Input<String> routeName;
  /// Route UUID
  final pulumi.Input<String> routeUuid;
  /// List of Tags
  final pulumi.Input<List<String>> tags;
  /// Agent temperature setting
  final pulumi.Input<double> temperature;
  /// Agent Template
  final pulumi.Input<List<GetGenaiAgentsAgentTemplate>> templates;
  /// Top P sampling parameter
  final pulumi.Input<double> topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String> updatedAt;
  /// URL for the Agent
  final pulumi.Input<String> url;
  /// User ID linked with the Agent
  final pulumi.Input<String> userId;

  /// Creates a new [GetGenaiAgentsAgent].
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
  GetGenaiAgentsAgent({
    required this.agentGuardrails,
    required this.agentId,
    required this.anthropicApiKeys,
    required this.apiKeyInfos,
    required this.apiKeys,
    required this.chatbotIdentifiers,
    required this.chatbots,
    required this.childAgents,
    required this.createdAt,
    required this.deployments,
    required this.description,
    required this.functions,
    required this.ifCase,
    required this.instruction,
    required this.k,
    required this.knowledgeBases,
    required this.maxTokens,
    required this.modelUuid,
    required this.models,
    required this.name,
    required this.openAiApiKeys,
    required this.parentAgents,
    required this.projectId,
    required this.region,
    required this.retrievalMethod,
    required this.routeCreatedAt,
    required this.routeCreatedBy,
    required this.routeName,
    required this.routeUuid,
    required this.tags,
    required this.temperature,
    required this.templates,
    required this.topP,
    required this.updatedAt,
    required this.url,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'deployments': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'functions': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ifCase,
      'instruction': instruction,
      'k': k,
      'knowledgeBases': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'openAiApiKeys': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentAgents': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': routeCreatedBy,
      'routeName': routeName,
      'routeUuid': routeUuid,
      'tags': tags,
      'temperature': temperature,
      'templates': pulumi.Input.mapInputValue<List<GetGenaiAgentsAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetGenaiAgentsAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': topP,
      'updatedAt': updatedAt,
      'url': url,
      'userId': userId,
    };
  }

  factory GetGenaiAgentsAgent.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgent(
      agentGuardrails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentAgentGuardrail>(map['agentGuardrails']!, (value) => GetGenaiAgentsAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      anthropicApiKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GetGenaiAgentsAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeyInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GetGenaiAgentsAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentApiKey>(map['apiKeys']!, (value) => GetGenaiAgentsAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      chatbotIdentifiers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GetGenaiAgentsAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))),
      chatbots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentChatbot>(map['chatbots']!, (value) => GetGenaiAgentsAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))),
      childAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentChildAgent>(map['childAgents']!, (value) => GetGenaiAgentsAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deployments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentDeployment>(map['deployments']!, (value) => GetGenaiAgentsAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      functions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentFunction>(map['functions']!, (value) => GetGenaiAgentsAgentFunction.fromMap((value as Map).cast<String, dynamic>()))),
      ifCase: pulumi.Input.fromValue(map['ifCase'] as String),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      k: pulumi.Input.fromValue(map['k'] as int),
      knowledgeBases: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentKnowledgeBase>(map['knowledgeBases']!, (value) => GetGenaiAgentsAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      maxTokens: pulumi.Input.fromValue(map['maxTokens'] as int),
      modelUuid: pulumi.Input.fromValue(map['modelUuid'] as String),
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentModel>(map['models']!, (value) => GetGenaiAgentsAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      openAiApiKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentOpenAiApiKey>(map['openAiApiKeys']!, (value) => GetGenaiAgentsAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      parentAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentParentAgent>(map['parentAgents']!, (value) => GetGenaiAgentsAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      retrievalMethod: pulumi.Input.fromValue(map['retrievalMethod'] as String),
      routeCreatedAt: pulumi.Input.fromValue(map['routeCreatedAt'] as String),
      routeCreatedBy: pulumi.Input.fromValue(map['routeCreatedBy'] as String),
      routeName: pulumi.Input.fromValue(map['routeName'] as String),
      routeUuid: pulumi.Input.fromValue(map['routeUuid'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      temperature: pulumi.Input.fromValue(map['temperature'] as double),
      templates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsAgentTemplate>(map['templates']!, (value) => GetGenaiAgentsAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      topP: pulumi.Input.fromValue(map['topP'] as double),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}


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
  final List<GetGenaiAgentsAgentAgentGuardrail> agentGuardrails;
  /// ID of the Agent to retrieve
  final String agentId;
  /// Anthropic API Key information
  final List<GetGenaiAgentsAgentAnthropicApiKey> anthropicApiKeys;
  /// List of API Key Infos
  final List<GetGenaiAgentsAgentApiKeyInfo> apiKeyInfos;
  /// List of API Keys
  final List<GetGenaiAgentsAgentApiKey> apiKeys;
  /// List of Chatbot Identifiers
  final List<GetGenaiAgentsAgentChatbotIdentifier> chatbotIdentifiers;
  /// ChatBot configuration
  final List<GetGenaiAgentsAgentChatbot> chatbots;
  /// List of child agents
  final List<GetGenaiAgentsAgentChildAgent> childAgents;
  /// Timestamp when the Agent was created
  final String createdAt;
  /// List of API Key Infos
  final List<GetGenaiAgentsAgentDeployment> deployments;
  /// Description for the Agent
  final String description;
  /// List of API Key Infos
  final List<GetGenaiAgentsAgentFunction> functions;
  /// If case condition
  final String ifCase;
  /// Instruction for the Agent
  final String instruction;
  /// K value
  final int k;
  /// List of Knowledge Bases
  final List<GetGenaiAgentsAgentKnowledgeBase> knowledgeBases;
  /// Maximum tokens allowed
  final int maxTokens;
  /// Model UUID of the Agent
  final String modelUuid;
  /// Model of the Agent
  final List<GetGenaiAgentsAgentModel> models;
  /// Name of the Agent
  final String name;
  /// OpenAI API Key information
  final List<GetGenaiAgentsAgentOpenAiApiKey> openAiApiKeys;
  /// List of parent agents
  final List<GetGenaiAgentsAgentParentAgent> parentAgents;
  /// Project ID of the Agent
  final String projectId;
  /// Region where the Agent is deployed
  final String region;
  /// Retrieval method used
  final String retrievalMethod;
  /// Timestamp when the route was created
  final String routeCreatedAt;
  /// User who created the route
  final String routeCreatedBy;
  /// Route name
  final String routeName;
  /// Route UUID
  final String routeUuid;
  /// List of Tags
  final List<String> tags;
  /// Agent temperature setting
  final double temperature;
  /// Agent Template
  final List<GetGenaiAgentsAgentTemplate> templates;
  /// Top P sampling parameter
  final double topP;
  /// Timestamp when the Agent was updated
  final String updatedAt;
  /// URL for the Agent
  final String url;
  /// User ID linked with the Agent
  final String userId;

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
      'agentGuardrails': pulumi.Input.encodeList<GetGenaiAgentsAgentAgentGuardrail, Map<String, dynamic>>(agentGuardrails, (value) => value.toMap()),
      'agentId': agentId,
      'anthropicApiKeys': pulumi.Input.encodeList<GetGenaiAgentsAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys, (value) => value.toMap()),
      'apiKeyInfos': pulumi.Input.encodeList<GetGenaiAgentsAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos, (value) => value.toMap()),
      'apiKeys': pulumi.Input.encodeList<GetGenaiAgentsAgentApiKey, Map<String, dynamic>>(apiKeys, (value) => value.toMap()),
      'chatbotIdentifiers': pulumi.Input.encodeList<GetGenaiAgentsAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers, (value) => value.toMap()),
      'chatbots': pulumi.Input.encodeList<GetGenaiAgentsAgentChatbot, Map<String, dynamic>>(chatbots, (value) => value.toMap()),
      'childAgents': pulumi.Input.encodeList<GetGenaiAgentsAgentChildAgent, Map<String, dynamic>>(childAgents, (value) => value.toMap()),
      'createdAt': createdAt,
      'deployments': pulumi.Input.encodeList<GetGenaiAgentsAgentDeployment, Map<String, dynamic>>(deployments, (value) => value.toMap()),
      'description': description,
      'functions': pulumi.Input.encodeList<GetGenaiAgentsAgentFunction, Map<String, dynamic>>(functions, (value) => value.toMap()),
      'ifCase': ifCase,
      'instruction': instruction,
      'k': k,
      'knowledgeBases': pulumi.Input.encodeList<GetGenaiAgentsAgentKnowledgeBase, Map<String, dynamic>>(knowledgeBases, (value) => value.toMap()),
      'maxTokens': maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.encodeList<GetGenaiAgentsAgentModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'openAiApiKeys': pulumi.Input.encodeList<GetGenaiAgentsAgentOpenAiApiKey, Map<String, dynamic>>(openAiApiKeys, (value) => value.toMap()),
      'parentAgents': pulumi.Input.encodeList<GetGenaiAgentsAgentParentAgent, Map<String, dynamic>>(parentAgents, (value) => value.toMap()),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': routeCreatedBy,
      'routeName': routeName,
      'routeUuid': routeUuid,
      'tags': tags,
      'temperature': temperature,
      'templates': pulumi.Input.encodeList<GetGenaiAgentsAgentTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
      'topP': topP,
      'updatedAt': updatedAt,
      'url': url,
      'userId': userId,
    };
  }

  factory GetGenaiAgentsAgent.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgent(
      agentGuardrails: pulumi.Input.decodeList<GetGenaiAgentsAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGenaiAgentsAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())),
      agentId: map['agentId'] as String,
      anthropicApiKeys: pulumi.Input.decodeList<GetGenaiAgentsAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGenaiAgentsAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: pulumi.Input.decodeList<GetGenaiAgentsAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGenaiAgentsAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: pulumi.Input.decodeList<GetGenaiAgentsAgentApiKey>(map['apiKeys'], (value) => GetGenaiAgentsAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: pulumi.Input.decodeList<GetGenaiAgentsAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGenaiAgentsAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: pulumi.Input.decodeList<GetGenaiAgentsAgentChatbot>(map['chatbots'], (value) => GetGenaiAgentsAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      childAgents: pulumi.Input.decodeList<GetGenaiAgentsAgentChildAgent>(map['childAgents'], (value) => GetGenaiAgentsAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deployments: pulumi.Input.decodeList<GetGenaiAgentsAgentDeployment>(map['deployments'], (value) => GetGenaiAgentsAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      functions: pulumi.Input.decodeList<GetGenaiAgentsAgentFunction>(map['functions'], (value) => GetGenaiAgentsAgentFunction.fromMap((value as Map).cast<String, dynamic>())),
      ifCase: map['ifCase'] as String,
      instruction: map['instruction'] as String,
      k: map['k'] as int,
      knowledgeBases: pulumi.Input.decodeList<GetGenaiAgentsAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGenaiAgentsAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      maxTokens: map['maxTokens'] as int,
      modelUuid: map['modelUuid'] as String,
      models: pulumi.Input.decodeList<GetGenaiAgentsAgentModel>(map['models'], (value) => GetGenaiAgentsAgentModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openAiApiKeys: pulumi.Input.decodeList<GetGenaiAgentsAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGenaiAgentsAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      parentAgents: pulumi.Input.decodeList<GetGenaiAgentsAgentParentAgent>(map['parentAgents'], (value) => GetGenaiAgentsAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      retrievalMethod: map['retrievalMethod'] as String,
      routeCreatedAt: map['routeCreatedAt'] as String,
      routeCreatedBy: map['routeCreatedBy'] as String,
      routeName: map['routeName'] as String,
      routeUuid: map['routeUuid'] as String,
      tags: (map['tags'] as List).cast<String>(),
      temperature: map['temperature'] as double,
      templates: pulumi.Input.decodeList<GetGenaiAgentsAgentTemplate>(map['templates'], (value) => GetGenaiAgentsAgentTemplate.fromMap((value as Map).cast<String, dynamic>())),
      topP: map['topP'] as double,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] as String,
      userId: map['userId'] as String,
    );
  }
}


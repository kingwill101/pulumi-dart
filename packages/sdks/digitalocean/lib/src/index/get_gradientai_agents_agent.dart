// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agents_agent_agent_guardrail.dart';
import 'get_gradientai_agents_agent_anthropic_api_key.dart';
import 'get_gradientai_agents_agent_api_key.dart';
import 'get_gradientai_agents_agent_api_key_info.dart';
import 'get_gradientai_agents_agent_chatbot.dart';
import 'get_gradientai_agents_agent_chatbot_identifier.dart';
import 'get_gradientai_agents_agent_child_agent.dart';
import 'get_gradientai_agents_agent_deployment.dart';
import 'get_gradientai_agents_agent_function.dart';
import 'get_gradientai_agents_agent_knowledge_base.dart';
import 'get_gradientai_agents_agent_model.dart';
import 'get_gradientai_agents_agent_open_ai_api_key.dart';
import 'get_gradientai_agents_agent_parent_agent.dart';
import 'get_gradientai_agents_agent_template.dart';

class GetGradientaiAgentsAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GetGradientaiAgentsAgentAgentGuardrail>> agentGuardrails;
  /// ID of the Agent to retrieve
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetGradientaiAgentsAgentAnthropicApiKey>> anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsAgentApiKeyInfo>> apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetGradientaiAgentsAgentApiKey>> apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetGradientaiAgentsAgentChatbotIdentifier>> chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetGradientaiAgentsAgentChatbot>> chatbots;
  /// List of child agents
  final pulumi.Input<List<GetGradientaiAgentsAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String> createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsAgentDeployment>> deployments;
  /// Description for the Agent
  final pulumi.Input<String> description;
  /// List of API Key Infos
  final pulumi.Input<List<GetGradientaiAgentsAgentFunction>> functions;
  /// If case condition
  final pulumi.Input<String> ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int> k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetGradientaiAgentsAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int> maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GetGradientaiAgentsAgentModel>> models;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// OpenAI API Key information
  final pulumi.Input<List<GetGradientaiAgentsAgentOpenAiApiKey>> openAiApiKeys;
  /// List of parent agents
  final pulumi.Input<List<GetGradientaiAgentsAgentParentAgent>> parentAgents;
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
  final pulumi.Input<List<GetGradientaiAgentsAgentTemplate>> templates;
  /// Top P sampling parameter
  final pulumi.Input<double> topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String> updatedAt;
  /// URL for the Agent
  final pulumi.Input<String> url;
  /// User ID linked with the Agent
  final pulumi.Input<String> userId;

  /// Creates a new [GetGradientaiAgentsAgent].
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
  GetGradientaiAgentsAgent({
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
      'agentGuardrails': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'deployments': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'functions': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ifCase,
      'instruction': instruction,
      'k': k,
      'knowledgeBases': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'openAiApiKeys': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentAgents': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': routeCreatedBy,
      'routeName': routeName,
      'routeUuid': routeUuid,
      'tags': tags,
      'temperature': temperature,
      'templates': pulumi.Input.mapInputValue<List<GetGradientaiAgentsAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetGradientaiAgentsAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': topP,
      'updatedAt': updatedAt,
      'url': url,
      'userId': userId,
    };
  }

  factory GetGradientaiAgentsAgent.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgent(
      agentGuardrails: (pulumi.Input.decodeList<GetGradientaiAgentsAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGradientaiAgentsAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      agentId: (map['agentId'] as String).input(),
      anthropicApiKeys: (pulumi.Input.decodeList<GetGradientaiAgentsAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGradientaiAgentsAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeyInfos: (pulumi.Input.decodeList<GetGradientaiAgentsAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGradientaiAgentsAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiKeys: (pulumi.Input.decodeList<GetGradientaiAgentsAgentApiKey>(map['apiKeys'], (value) => GetGradientaiAgentsAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbotIdentifiers: (pulumi.Input.decodeList<GetGradientaiAgentsAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGradientaiAgentsAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))).input(),
      chatbots: (pulumi.Input.decodeList<GetGradientaiAgentsAgentChatbot>(map['chatbots'], (value) => GetGradientaiAgentsAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))).input(),
      childAgents: (pulumi.Input.decodeList<GetGradientaiAgentsAgentChildAgent>(map['childAgents'], (value) => GetGradientaiAgentsAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: (map['createdAt'] as String).input(),
      deployments: (pulumi.Input.decodeList<GetGradientaiAgentsAgentDeployment>(map['deployments'], (value) => GetGradientaiAgentsAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: (map['description'] as String).input(),
      functions: (pulumi.Input.decodeList<GetGradientaiAgentsAgentFunction>(map['functions'], (value) => GetGradientaiAgentsAgentFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ifCase: (map['ifCase'] as String).input(),
      instruction: (map['instruction'] as String).input(),
      k: (map['k'] as int).input(),
      knowledgeBases: (pulumi.Input.decodeList<GetGradientaiAgentsAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGradientaiAgentsAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxTokens: (map['maxTokens'] as int).input(),
      modelUuid: (map['modelUuid'] as String).input(),
      models: (pulumi.Input.decodeList<GetGradientaiAgentsAgentModel>(map['models'], (value) => GetGradientaiAgentsAgentModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      openAiApiKeys: (pulumi.Input.decodeList<GetGradientaiAgentsAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGradientaiAgentsAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parentAgents: (pulumi.Input.decodeList<GetGradientaiAgentsAgentParentAgent>(map['parentAgents'], (value) => GetGradientaiAgentsAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      projectId: (map['projectId'] as String).input(),
      region: (map['region'] as String).input(),
      retrievalMethod: (map['retrievalMethod'] as String).input(),
      routeCreatedAt: (map['routeCreatedAt'] as String).input(),
      routeCreatedBy: (map['routeCreatedBy'] as String).input(),
      routeName: (map['routeName'] as String).input(),
      routeUuid: (map['routeUuid'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      temperature: (map['temperature'] as double).input(),
      templates: (pulumi.Input.decodeList<GetGradientaiAgentsAgentTemplate>(map['templates'], (value) => GetGradientaiAgentsAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      topP: (map['topP'] as double).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      url: (map['url'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}


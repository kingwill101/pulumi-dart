// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agents_agent_agent_guardrail.dart';
import 'get_agent_platform_agents_agent_anthropic_api_key.dart';
import 'get_agent_platform_agents_agent_api_key.dart';
import 'get_agent_platform_agents_agent_api_key_info.dart';
import 'get_agent_platform_agents_agent_chatbot.dart';
import 'get_agent_platform_agents_agent_chatbot_identifier.dart';
import 'get_agent_platform_agents_agent_child_agent.dart';
import 'get_agent_platform_agents_agent_deployment.dart';
import 'get_agent_platform_agents_agent_function.dart';
import 'get_agent_platform_agents_agent_knowledge_base.dart';
import 'get_agent_platform_agents_agent_model.dart';
import 'get_agent_platform_agents_agent_open_ai_api_key.dart';
import 'get_agent_platform_agents_agent_parent_agent.dart';
import 'get_agent_platform_agents_agent_template.dart';

class GetAgentPlatformAgentsAgent {
  /// AgentGuardrail represents a Guardrail attached to Gen AI Agent
  final pulumi.Input<List<GetAgentPlatformAgentsAgentAgentGuardrail>> agentGuardrails;
  /// ID of the Agent to retrieve
  final pulumi.Input<String> agentId;
  /// Anthropic API Key information
  final pulumi.Input<List<GetAgentPlatformAgentsAgentAnthropicApiKey>> anthropicApiKeys;
  /// List of API Key Infos
  final pulumi.Input<List<GetAgentPlatformAgentsAgentApiKeyInfo>> apiKeyInfos;
  /// List of API Keys
  final pulumi.Input<List<GetAgentPlatformAgentsAgentApiKey>> apiKeys;
  /// List of Chatbot Identifiers
  final pulumi.Input<List<GetAgentPlatformAgentsAgentChatbotIdentifier>> chatbotIdentifiers;
  /// ChatBot configuration
  final pulumi.Input<List<GetAgentPlatformAgentsAgentChatbot>> chatbots;
  /// List of child agents
  final pulumi.Input<List<GetAgentPlatformAgentsAgentChildAgent>> childAgents;
  /// Timestamp when the Agent was created
  final pulumi.Input<String> createdAt;
  /// List of API Key Infos
  final pulumi.Input<List<GetAgentPlatformAgentsAgentDeployment>> deployments;
  /// Description for the Agent
  final pulumi.Input<String> description;
  /// List of API Key Infos
  final pulumi.Input<List<GetAgentPlatformAgentsAgentFunction>> functions;
  /// If case condition
  final pulumi.Input<String> ifCase;
  /// Instruction for the Agent
  final pulumi.Input<String> instruction;
  /// K value
  final pulumi.Input<int> k;
  /// List of Knowledge Bases
  final pulumi.Input<List<GetAgentPlatformAgentsAgentKnowledgeBase>> knowledgeBases;
  /// Maximum tokens allowed
  final pulumi.Input<int> maxTokens;
  /// Model UUID of the Agent
  final pulumi.Input<String> modelUuid;
  /// Model of the Agent
  final pulumi.Input<List<GetAgentPlatformAgentsAgentModel>> models;
  /// Name of the Agent
  final pulumi.Input<String> name;
  /// OpenAI API Key information
  final pulumi.Input<List<GetAgentPlatformAgentsAgentOpenAiApiKey>> openAiApiKeys;
  /// List of parent agents
  final pulumi.Input<List<GetAgentPlatformAgentsAgentParentAgent>> parentAgents;
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
  final pulumi.Input<List<GetAgentPlatformAgentsAgentTemplate>> templates;
  /// Top P sampling parameter
  final pulumi.Input<double> topP;
  /// Timestamp when the Agent was updated
  final pulumi.Input<String> updatedAt;
  /// URL for the Agent
  final pulumi.Input<String> url;
  /// User ID linked with the Agent
  final pulumi.Input<String> userId;

  /// Creates a new [GetAgentPlatformAgentsAgent].
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
  const GetAgentPlatformAgentsAgent({
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
      'agentGuardrails': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'childAgents': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentChildAgent>, List<Map<String, dynamic>>>(childAgents, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentChildAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': createdAt,
      'deployments': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'functions': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ifCase,
      'instruction': instruction,
      'k': k,
      'knowledgeBases': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'openAiApiKeys': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentAgents': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentParentAgent>, List<Map<String, dynamic>>>(parentAgents, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentParentAgent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': routeCreatedBy,
      'routeName': routeName,
      'routeUuid': routeUuid,
      'tags': tags,
      'temperature': temperature,
      'templates': pulumi.Input.mapInputValue<List<GetAgentPlatformAgentsAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentsAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': topP,
      'updatedAt': updatedAt,
      'url': url,
      'userId': userId,
    };
  }

  factory GetAgentPlatformAgentsAgent.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentsAgent(
      agentGuardrails: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentAgentGuardrail>(map['agentGuardrails']!, (value) => GetAgentPlatformAgentsAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      anthropicApiKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentAnthropicApiKey>(map['anthropicApiKeys']!, (value) => GetAgentPlatformAgentsAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeyInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentApiKeyInfo>(map['apiKeyInfos']!, (value) => GetAgentPlatformAgentsAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))),
      apiKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentApiKey>(map['apiKeys']!, (value) => GetAgentPlatformAgentsAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      chatbotIdentifiers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentChatbotIdentifier>(map['chatbotIdentifiers']!, (value) => GetAgentPlatformAgentsAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))),
      chatbots: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentChatbot>(map['chatbots']!, (value) => GetAgentPlatformAgentsAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))),
      childAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentChildAgent>(map['childAgents']!, (value) => GetAgentPlatformAgentsAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deployments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentDeployment>(map['deployments']!, (value) => GetAgentPlatformAgentsAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      functions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentFunction>(map['functions']!, (value) => GetAgentPlatformAgentsAgentFunction.fromMap((value as Map).cast<String, dynamic>()))),
      ifCase: pulumi.Input.fromValue(map['ifCase'] as String),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      k: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['k'])),
      knowledgeBases: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentKnowledgeBase>(map['knowledgeBases']!, (value) => GetAgentPlatformAgentsAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))),
      maxTokens: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxTokens'])),
      modelUuid: pulumi.Input.fromValue(map['modelUuid'] as String),
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentModel>(map['models']!, (value) => GetAgentPlatformAgentsAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      openAiApiKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentOpenAiApiKey>(map['openAiApiKeys']!, (value) => GetAgentPlatformAgentsAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))),
      parentAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentParentAgent>(map['parentAgents']!, (value) => GetAgentPlatformAgentsAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      retrievalMethod: pulumi.Input.fromValue(map['retrievalMethod'] as String),
      routeCreatedAt: pulumi.Input.fromValue(map['routeCreatedAt'] as String),
      routeCreatedBy: pulumi.Input.fromValue(map['routeCreatedBy'] as String),
      routeName: pulumi.Input.fromValue(map['routeName'] as String),
      routeUuid: pulumi.Input.fromValue(map['routeUuid'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      temperature: pulumi.Input.fromValue((map['temperature'] as num).toDouble()),
      templates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentsAgentTemplate>(map['templates']!, (value) => GetAgentPlatformAgentsAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))),
      topP: pulumi.Input.fromValue((map['topP'] as num).toDouble()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

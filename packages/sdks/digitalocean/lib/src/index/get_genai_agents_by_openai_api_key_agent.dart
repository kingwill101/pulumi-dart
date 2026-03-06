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
  const GetGenaiAgentsByOpenaiApiKeyAgent({
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
      agentGuardrails: (() { final guardedValue = map['agentGuardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      anthropicApiKeys: (() { final guardedValue = map['anthropicApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeyInfos: (() { final guardedValue = map['apiKeyInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentApiKey>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbotIdentifiers: (() { final guardedValue = map['chatbotIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbots: (() { final guardedValue = map['chatbots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChatbot>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      childAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentChildAgent>(map['childAgents']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentChildAgent.fromMap((value as Map).cast<String, dynamic>()))),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentDeployment>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentFunction>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentFunction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ifCase: (() { final guardedValue = map['ifCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instruction: pulumi.Input.fromValue(map['instruction'] as String),
      k: (() { final guardedValue = map['k']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      knowledgeBases: (() { final guardedValue = map['knowledgeBases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      modelUuid: pulumi.Input.fromValue(map['modelUuid'] as String),
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentModel>(map['models']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentModel.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      openAiApiKeys: (() { final guardedValue = map['openAiApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parentAgents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentParentAgent>(map['parentAgents']!, (value) => GetGenaiAgentsByOpenaiApiKeyAgentParentAgent.fromMap((value as Map).cast<String, dynamic>()))),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      retrievalMethod: (() { final guardedValue = map['retrievalMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeCreatedAt: pulumi.Input.fromValue(map['routeCreatedAt'] as String),
      routeCreatedBy: (() { final guardedValue = map['routeCreatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeUuid: (() { final guardedValue = map['routeUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetGenaiAgentsByOpenaiApiKeyAgentTemplate>(guardedValue, (value) => GetGenaiAgentsByOpenaiApiKeyAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


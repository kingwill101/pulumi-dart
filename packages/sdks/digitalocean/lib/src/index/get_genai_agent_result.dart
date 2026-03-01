// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_agent_guardrail.dart';
import 'get_genai_agent_anthropic_api_key.dart';
import 'get_genai_agent_api_key.dart';
import 'get_genai_agent_api_key_info.dart';
import 'get_genai_agent_chatbot.dart';
import 'get_genai_agent_chatbot_identifier.dart';
import 'get_genai_agent_child_agent.dart';
import 'get_genai_agent_deployment.dart';
import 'get_genai_agent_function.dart';
import 'get_genai_agent_knowledge_base.dart';
import 'get_genai_agent_model.dart';
import 'get_genai_agent_open_ai_api_key.dart';
import 'get_genai_agent_parent_agent.dart';
import 'get_genai_agent_template.dart';

/// Result data returned by getGenaiAgent.
class GetGenaiAgentResult {
  final List<GetGenaiAgentAgentGuardrail>? agentGuardrails;
  final String agentId;
  final List<GetGenaiAgentAnthropicApiKey>? anthropicApiKeys;
  final List<GetGenaiAgentApiKeyInfo>? apiKeyInfos;
  final List<GetGenaiAgentApiKey>? apiKeys;
  final List<GetGenaiAgentChatbotIdentifier>? chatbotIdentifiers;
  final List<GetGenaiAgentChatbot>? chatbots;
  final List<GetGenaiAgentChildAgent> childAgents;
  final String createdAt;
  final List<GetGenaiAgentDeployment>? deployments;
  final String? description;
  final List<GetGenaiAgentFunction>? functions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? ifCase;
  final String instruction;
  final int? k;
  final List<GetGenaiAgentKnowledgeBase>? knowledgeBases;
  final int? maxTokens;
  final String modelUuid;
  final List<GetGenaiAgentModel> models;
  final String name;
  final List<GetGenaiAgentOpenAiApiKey>? openAiApiKeys;
  final List<GetGenaiAgentParentAgent> parentAgents;
  final String projectId;
  final String region;
  final String? retrievalMethod;
  final String routeCreatedAt;
  final String? routeCreatedBy;
  final String? routeName;
  final String? routeUuid;
  final List<String>? tags;
  final double? temperature;
  final List<GetGenaiAgentTemplate>? templates;
  final double? topP;
  final String updatedAt;
  final String? url;
  final String? userId;

  /// Creates a new [GetGenaiAgentResult].
  /// [agentGuardrails] Optional.
  /// [agentId] Required.
  /// [anthropicApiKeys] Optional.
  /// [apiKeyInfos] Optional.
  /// [apiKeys] Optional.
  /// [chatbotIdentifiers] Optional.
  /// [chatbots] Optional.
  /// [childAgents] Required.
  /// [createdAt] Required.
  /// [deployments] Optional.
  /// [description] Optional.
  /// [functions] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ifCase] Optional.
  /// [instruction] Required.
  /// [k] Optional.
  /// [knowledgeBases] Optional.
  /// [maxTokens] Optional.
  /// [modelUuid] Required.
  /// [models] Required.
  /// [name] Required.
  /// [openAiApiKeys] Optional.
  /// [parentAgents] Required.
  /// [projectId] Required.
  /// [region] Required.
  /// [retrievalMethod] Optional.
  /// [routeCreatedAt] Required.
  /// [routeCreatedBy] Optional.
  /// [routeName] Optional.
  /// [routeUuid] Optional.
  /// [tags] Optional.
  /// [temperature] Optional.
  /// [templates] Optional.
  /// [topP] Optional.
  /// [updatedAt] Required.
  /// [url] Optional.
  /// [userId] Optional.
  GetGenaiAgentResult({
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
    required this.id,
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
      'agentGuardrails': ?agentGuardrails == null ? null : pulumi.Input.encodeList<GetGenaiAgentAgentGuardrail, Map<String, dynamic>>(agentGuardrails!, (value) => value.toMap()),
      'agentId': agentId,
      'anthropicApiKeys': ?anthropicApiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys!, (value) => value.toMap()),
      'apiKeyInfos': ?apiKeyInfos == null ? null : pulumi.Input.encodeList<GetGenaiAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos!, (value) => value.toMap()),
      'apiKeys': ?apiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentApiKey, Map<String, dynamic>>(apiKeys!, (value) => value.toMap()),
      'chatbotIdentifiers': ?chatbotIdentifiers == null ? null : pulumi.Input.encodeList<GetGenaiAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers!, (value) => value.toMap()),
      'chatbots': ?chatbots == null ? null : pulumi.Input.encodeList<GetGenaiAgentChatbot, Map<String, dynamic>>(chatbots!, (value) => value.toMap()),
      'childAgents': pulumi.Input.encodeList<GetGenaiAgentChildAgent, Map<String, dynamic>>(childAgents, (value) => value.toMap()),
      'createdAt': createdAt,
      'deployments': ?deployments == null ? null : pulumi.Input.encodeList<GetGenaiAgentDeployment, Map<String, dynamic>>(deployments!, (value) => value.toMap()),
      'description': ?description,
      'functions': ?functions == null ? null : pulumi.Input.encodeList<GetGenaiAgentFunction, Map<String, dynamic>>(functions!, (value) => value.toMap()),
      'id': id,
      'ifCase': ?ifCase,
      'instruction': instruction,
      'k': ?k,
      'knowledgeBases': ?knowledgeBases == null ? null : pulumi.Input.encodeList<GetGenaiAgentKnowledgeBase, Map<String, dynamic>>(knowledgeBases!, (value) => value.toMap()),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.encodeList<GetGenaiAgentModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'openAiApiKeys': ?openAiApiKeys == null ? null : pulumi.Input.encodeList<GetGenaiAgentOpenAiApiKey, Map<String, dynamic>>(openAiApiKeys!, (value) => value.toMap()),
      'parentAgents': pulumi.Input.encodeList<GetGenaiAgentParentAgent, Map<String, dynamic>>(parentAgents, (value) => value.toMap()),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?templates == null ? null : pulumi.Input.encodeList<GetGenaiAgentTemplate, Map<String, dynamic>>(templates!, (value) => value.toMap()),
      'topP': ?topP,
      'updatedAt': updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGenaiAgentResult.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentResult(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGenaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())),
      agentId: map['agentId'] as String,
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGenaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGenaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentApiKey>(map['apiKeys'], (value) => GetGenaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGenaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: map['chatbots'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentChatbot>(map['chatbots'], (value) => GetGenaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      childAgents: pulumi.Input.decodeList<GetGenaiAgentChildAgent>(map['childAgents'], (value) => GetGenaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deployments: map['deployments'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentDeployment>(map['deployments'], (value) => GetGenaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      functions: map['functions'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentFunction>(map['functions'], (value) => GetGenaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ifCase: map['ifCase'] == null ? null : map['ifCase'] as String,
      instruction: map['instruction'] as String,
      k: map['k'] == null ? null : map['k'] as int,
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGenaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      maxTokens: map['maxTokens'] == null ? null : map['maxTokens'] as int,
      modelUuid: map['modelUuid'] as String,
      models: pulumi.Input.decodeList<GetGenaiAgentModel>(map['models'], (value) => GetGenaiAgentModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGenaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      parentAgents: pulumi.Input.decodeList<GetGenaiAgentParentAgent>(map['parentAgents'], (value) => GetGenaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      retrievalMethod: map['retrievalMethod'] == null ? null : map['retrievalMethod'] as String,
      routeCreatedAt: map['routeCreatedAt'] as String,
      routeCreatedBy: map['routeCreatedBy'] == null ? null : map['routeCreatedBy'] as String,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
      routeUuid: map['routeUuid'] == null ? null : map['routeUuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      temperature: map['temperature'] == null ? null : map['temperature'] as double,
      templates: map['templates'] == null ? null : pulumi.Input.decodeList<GetGenaiAgentTemplate>(map['templates'], (value) => GetGenaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())),
      topP: map['topP'] == null ? null : map['topP'] as double,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}


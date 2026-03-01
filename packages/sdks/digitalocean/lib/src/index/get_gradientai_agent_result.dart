// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_agent_agent_guardrail.dart';
import 'get_gradientai_agent_anthropic_api_key.dart';
import 'get_gradientai_agent_api_key.dart';
import 'get_gradientai_agent_api_key_info.dart';
import 'get_gradientai_agent_chatbot.dart';
import 'get_gradientai_agent_chatbot_identifier.dart';
import 'get_gradientai_agent_child_agent.dart';
import 'get_gradientai_agent_deployment.dart';
import 'get_gradientai_agent_function.dart';
import 'get_gradientai_agent_knowledge_base.dart';
import 'get_gradientai_agent_model.dart';
import 'get_gradientai_agent_open_ai_api_key.dart';
import 'get_gradientai_agent_parent_agent.dart';
import 'get_gradientai_agent_template.dart';

/// Result data returned by getGradientaiAgent.
class GetGradientaiAgentResult {
  final List<GetGradientaiAgentAgentGuardrail>? agentGuardrails;
  final String agentId;
  final List<GetGradientaiAgentAnthropicApiKey>? anthropicApiKeys;
  final List<GetGradientaiAgentApiKeyInfo>? apiKeyInfos;
  final List<GetGradientaiAgentApiKey>? apiKeys;
  final List<GetGradientaiAgentChatbotIdentifier>? chatbotIdentifiers;
  final List<GetGradientaiAgentChatbot>? chatbots;
  final List<GetGradientaiAgentChildAgent> childAgents;
  final String createdAt;
  final List<GetGradientaiAgentDeployment>? deployments;
  final String? description;
  final List<GetGradientaiAgentFunction>? functions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? ifCase;
  final String instruction;
  final int? k;
  final List<GetGradientaiAgentKnowledgeBase>? knowledgeBases;
  final int? maxTokens;
  final String modelUuid;
  final List<GetGradientaiAgentModel> models;
  final String name;
  final List<GetGradientaiAgentOpenAiApiKey>? openAiApiKeys;
  final List<GetGradientaiAgentParentAgent> parentAgents;
  final String projectId;
  final String region;
  final String? retrievalMethod;
  final String routeCreatedAt;
  final String? routeCreatedBy;
  final String? routeName;
  final String? routeUuid;
  final List<String>? tags;
  final double? temperature;
  final List<GetGradientaiAgentTemplate>? templates;
  final double? topP;
  final String updatedAt;
  final String? url;
  final String? userId;

  /// Creates a new [GetGradientaiAgentResult].
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
  GetGradientaiAgentResult({
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
      'agentGuardrails': ?agentGuardrails == null ? null : pulumi.Input.encodeList<GetGradientaiAgentAgentGuardrail, Map<String, dynamic>>(agentGuardrails!, (value) => value.toMap()),
      'agentId': agentId,
      'anthropicApiKeys': ?anthropicApiKeys == null ? null : pulumi.Input.encodeList<GetGradientaiAgentAnthropicApiKey, Map<String, dynamic>>(anthropicApiKeys!, (value) => value.toMap()),
      'apiKeyInfos': ?apiKeyInfos == null ? null : pulumi.Input.encodeList<GetGradientaiAgentApiKeyInfo, Map<String, dynamic>>(apiKeyInfos!, (value) => value.toMap()),
      'apiKeys': ?apiKeys == null ? null : pulumi.Input.encodeList<GetGradientaiAgentApiKey, Map<String, dynamic>>(apiKeys!, (value) => value.toMap()),
      'chatbotIdentifiers': ?chatbotIdentifiers == null ? null : pulumi.Input.encodeList<GetGradientaiAgentChatbotIdentifier, Map<String, dynamic>>(chatbotIdentifiers!, (value) => value.toMap()),
      'chatbots': ?chatbots == null ? null : pulumi.Input.encodeList<GetGradientaiAgentChatbot, Map<String, dynamic>>(chatbots!, (value) => value.toMap()),
      'childAgents': pulumi.Input.encodeList<GetGradientaiAgentChildAgent, Map<String, dynamic>>(childAgents, (value) => value.toMap()),
      'createdAt': createdAt,
      'deployments': ?deployments == null ? null : pulumi.Input.encodeList<GetGradientaiAgentDeployment, Map<String, dynamic>>(deployments!, (value) => value.toMap()),
      'description': ?description,
      'functions': ?functions == null ? null : pulumi.Input.encodeList<GetGradientaiAgentFunction, Map<String, dynamic>>(functions!, (value) => value.toMap()),
      'id': id,
      'ifCase': ?ifCase,
      'instruction': instruction,
      'k': ?k,
      'knowledgeBases': ?knowledgeBases == null ? null : pulumi.Input.encodeList<GetGradientaiAgentKnowledgeBase, Map<String, dynamic>>(knowledgeBases!, (value) => value.toMap()),
      'maxTokens': ?maxTokens,
      'modelUuid': modelUuid,
      'models': pulumi.Input.encodeList<GetGradientaiAgentModel, Map<String, dynamic>>(models, (value) => value.toMap()),
      'name': name,
      'openAiApiKeys': ?openAiApiKeys == null ? null : pulumi.Input.encodeList<GetGradientaiAgentOpenAiApiKey, Map<String, dynamic>>(openAiApiKeys!, (value) => value.toMap()),
      'parentAgents': pulumi.Input.encodeList<GetGradientaiAgentParentAgent, Map<String, dynamic>>(parentAgents, (value) => value.toMap()),
      'projectId': projectId,
      'region': region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?templates == null ? null : pulumi.Input.encodeList<GetGradientaiAgentTemplate, Map<String, dynamic>>(templates!, (value) => value.toMap()),
      'topP': ?topP,
      'updatedAt': updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGradientaiAgentResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentResult(
      agentGuardrails: map['agentGuardrails'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentAgentGuardrail>(map['agentGuardrails'], (value) => GetGradientaiAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())),
      agentId: map['agentId'] as String,
      anthropicApiKeys: map['anthropicApiKeys'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentAnthropicApiKey>(map['anthropicApiKeys'], (value) => GetGradientaiAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())),
      apiKeyInfos: map['apiKeyInfos'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentApiKeyInfo>(map['apiKeyInfos'], (value) => GetGradientaiAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())),
      apiKeys: map['apiKeys'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentApiKey>(map['apiKeys'], (value) => GetGradientaiAgentApiKey.fromMap((value as Map).cast<String, dynamic>())),
      chatbotIdentifiers: map['chatbotIdentifiers'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentChatbotIdentifier>(map['chatbotIdentifiers'], (value) => GetGradientaiAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      chatbots: map['chatbots'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentChatbot>(map['chatbots'], (value) => GetGradientaiAgentChatbot.fromMap((value as Map).cast<String, dynamic>())),
      childAgents: pulumi.Input.decodeList<GetGradientaiAgentChildAgent>(map['childAgents'], (value) => GetGradientaiAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())),
      createdAt: map['createdAt'] as String,
      deployments: map['deployments'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentDeployment>(map['deployments'], (value) => GetGradientaiAgentDeployment.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      functions: map['functions'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentFunction>(map['functions'], (value) => GetGradientaiAgentFunction.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ifCase: map['ifCase'] == null ? null : map['ifCase'] as String,
      instruction: map['instruction'] as String,
      k: map['k'] == null ? null : map['k'] as int,
      knowledgeBases: map['knowledgeBases'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentKnowledgeBase>(map['knowledgeBases'], (value) => GetGradientaiAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())),
      maxTokens: map['maxTokens'] == null ? null : map['maxTokens'] as int,
      modelUuid: map['modelUuid'] as String,
      models: pulumi.Input.decodeList<GetGradientaiAgentModel>(map['models'], (value) => GetGradientaiAgentModel.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      openAiApiKeys: map['openAiApiKeys'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentOpenAiApiKey>(map['openAiApiKeys'], (value) => GetGradientaiAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())),
      parentAgents: pulumi.Input.decodeList<GetGradientaiAgentParentAgent>(map['parentAgents'], (value) => GetGradientaiAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      retrievalMethod: map['retrievalMethod'] == null ? null : map['retrievalMethod'] as String,
      routeCreatedAt: map['routeCreatedAt'] as String,
      routeCreatedBy: map['routeCreatedBy'] == null ? null : map['routeCreatedBy'] as String,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
      routeUuid: map['routeUuid'] == null ? null : map['routeUuid'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      temperature: map['temperature'] == null ? null : map['temperature'] as double,
      templates: map['templates'] == null ? null : pulumi.Input.decodeList<GetGradientaiAgentTemplate>(map['templates'], (value) => GetGradientaiAgentTemplate.fromMap((value as Map).cast<String, dynamic>())),
      topP: map['topP'] == null ? null : map['topP'] as double,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      userId: map['userId'] == null ? null : map['userId'] as String,
    );
  }
}


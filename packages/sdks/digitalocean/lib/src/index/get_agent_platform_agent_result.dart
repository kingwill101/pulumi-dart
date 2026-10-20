// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agent_agent_guardrail.dart';
import 'get_agent_platform_agent_anthropic_api_key.dart';
import 'get_agent_platform_agent_api_key.dart';
import 'get_agent_platform_agent_api_key_info.dart';
import 'get_agent_platform_agent_chatbot.dart';
import 'get_agent_platform_agent_chatbot_identifier.dart';
import 'get_agent_platform_agent_child_agent.dart';
import 'get_agent_platform_agent_deployment.dart';
import 'get_agent_platform_agent_function.dart';
import 'get_agent_platform_agent_knowledge_base.dart';
import 'get_agent_platform_agent_model.dart';
import 'get_agent_platform_agent_open_ai_api_key.dart';
import 'get_agent_platform_agent_parent_agent.dart';
import 'get_agent_platform_agent_template.dart';

/// Result data returned by getAgentPlatformAgent.
class GetAgentPlatformAgentResult {
  final List<GetAgentPlatformAgentAgentGuardrail>? agentGuardrails;
  final String? agentId;
  final List<GetAgentPlatformAgentAnthropicApiKey>? anthropicApiKeys;
  final List<GetAgentPlatformAgentApiKeyInfo>? apiKeyInfos;
  final List<GetAgentPlatformAgentApiKey>? apiKeys;
  final List<GetAgentPlatformAgentChatbotIdentifier>? chatbotIdentifiers;
  final List<GetAgentPlatformAgentChatbot>? chatbots;
  final List<GetAgentPlatformAgentChildAgent>? childAgents;
  final String? createdAt;
  final List<GetAgentPlatformAgentDeployment>? deployments;
  final String? description;
  final List<GetAgentPlatformAgentFunction>? functions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ifCase;
  final String? instruction;
  final int? k;
  final List<GetAgentPlatformAgentKnowledgeBase>? knowledgeBases;
  final int? maxTokens;
  final String? modelUuid;
  final List<GetAgentPlatformAgentModel>? models;
  final String? name;
  final List<GetAgentPlatformAgentOpenAiApiKey>? openAiApiKeys;
  final List<GetAgentPlatformAgentParentAgent>? parentAgents;
  final String? projectId;
  final String? region;
  final String? retrievalMethod;
  final String? routeCreatedAt;
  final String? routeCreatedBy;
  final String? routeName;
  final String? routeUuid;
  final List<String>? tags;
  final double? temperature;
  final List<GetAgentPlatformAgentTemplate>? templates;
  final double? topP;
  final String? updatedAt;
  final String? url;
  final String? userId;

  /// Creates a new [GetAgentPlatformAgentResult].
  /// [agentGuardrails] Optional.
  /// [agentId] Optional.
  /// [anthropicApiKeys] Optional.
  /// [apiKeyInfos] Optional.
  /// [apiKeys] Optional.
  /// [chatbotIdentifiers] Optional.
  /// [chatbots] Optional.
  /// [childAgents] Optional.
  /// [createdAt] Optional.
  /// [deployments] Optional.
  /// [description] Optional.
  /// [functions] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ifCase] Optional.
  /// [instruction] Optional.
  /// [k] Optional.
  /// [knowledgeBases] Optional.
  /// [maxTokens] Optional.
  /// [modelUuid] Optional.
  /// [models] Optional.
  /// [name] Optional.
  /// [openAiApiKeys] Optional.
  /// [parentAgents] Optional.
  /// [projectId] Optional.
  /// [region] Optional.
  /// [retrievalMethod] Optional.
  /// [routeCreatedAt] Optional.
  /// [routeCreatedBy] Optional.
  /// [routeName] Optional.
  /// [routeUuid] Optional.
  /// [tags] Optional.
  /// [temperature] Optional.
  /// [templates] Optional.
  /// [topP] Optional.
  /// [updatedAt] Optional.
  /// [url] Optional.
  /// [userId] Optional.
  const GetAgentPlatformAgentResult({
    this.agentGuardrails,
    this.agentId,
    this.anthropicApiKeys,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    this.childAgents,
    this.createdAt,
    this.deployments,
    this.description,
    this.functions,
    this.id,
    this.ifCase,
    this.instruction,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    this.modelUuid,
    this.models,
    this.name,
    this.openAiApiKeys,
    this.parentAgents,
    this.projectId,
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
      'agentGuardrails': ?(() { final guardedValue = agentGuardrails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentAgentGuardrail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'agentId': ?agentId,
      'anthropicApiKeys': ?(() { final guardedValue = anthropicApiKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentAnthropicApiKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'apiKeyInfos': ?(() { final guardedValue = apiKeyInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentApiKeyInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'apiKeys': ?(() { final guardedValue = apiKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentApiKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'chatbotIdentifiers': ?(() { final guardedValue = chatbotIdentifiers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentChatbotIdentifier, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'chatbots': ?(() { final guardedValue = chatbots; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentChatbot, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'childAgents': ?(() { final guardedValue = childAgents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentChildAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createdAt': ?createdAt,
      'deployments': ?(() { final guardedValue = deployments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentDeployment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'functions': ?(() { final guardedValue = functions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentFunction, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ifCase': ?ifCase,
      'instruction': ?instruction,
      'k': ?k,
      'knowledgeBases': ?(() { final guardedValue = knowledgeBases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentKnowledgeBase, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maxTokens': ?maxTokens,
      'modelUuid': ?modelUuid,
      'models': ?(() { final guardedValue = models; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentModel, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'openAiApiKeys': ?(() { final guardedValue = openAiApiKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentOpenAiApiKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'parentAgents': ?(() { final guardedValue = parentAgents; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentParentAgent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'projectId': ?projectId,
      'region': ?region,
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedAt': ?routeCreatedAt,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?(() { final guardedValue = templates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAgentPlatformAgentTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'topP': ?topP,
      'updatedAt': ?updatedAt,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetAgentPlatformAgentResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentResult(
      agentGuardrails: (() { final guardedValue = map['agentGuardrails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentAgentGuardrail>(guardedValue, (value) => GetAgentPlatformAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>())); })(),
      agentId: (() { final guardedValue = map['agentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      anthropicApiKeys: (() { final guardedValue = map['anthropicApiKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentAnthropicApiKey>(guardedValue, (value) => GetAgentPlatformAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      apiKeyInfos: (() { final guardedValue = map['apiKeyInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentApiKeyInfo>(guardedValue, (value) => GetAgentPlatformAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentApiKey>(guardedValue, (value) => GetAgentPlatformAgentApiKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      chatbotIdentifiers: (() { final guardedValue = map['chatbotIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentChatbotIdentifier>(guardedValue, (value) => GetAgentPlatformAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>())); })(),
      chatbots: (() { final guardedValue = map['chatbots']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentChatbot>(guardedValue, (value) => GetAgentPlatformAgentChatbot.fromMap((value as Map).cast<String, dynamic>())); })(),
      childAgents: (() { final guardedValue = map['childAgents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentChildAgent>(guardedValue, (value) => GetAgentPlatformAgentChildAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentDeployment>(guardedValue, (value) => GetAgentPlatformAgentDeployment.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentFunction>(guardedValue, (value) => GetAgentPlatformAgentFunction.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ifCase: (() { final guardedValue = map['ifCase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instruction: (() { final guardedValue = map['instruction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      k: (() { final guardedValue = map['k']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      knowledgeBases: (() { final guardedValue = map['knowledgeBases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentKnowledgeBase>(guardedValue, (value) => GetAgentPlatformAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      modelUuid: (() { final guardedValue = map['modelUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentModel>(guardedValue, (value) => GetAgentPlatformAgentModel.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openAiApiKeys: (() { final guardedValue = map['openAiApiKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentOpenAiApiKey>(guardedValue, (value) => GetAgentPlatformAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      parentAgents: (() { final guardedValue = map['parentAgents']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentParentAgent>(guardedValue, (value) => GetAgentPlatformAgentParentAgent.fromMap((value as Map).cast<String, dynamic>())); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      retrievalMethod: (() { final guardedValue = map['retrievalMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeCreatedAt: (() { final guardedValue = map['routeCreatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeCreatedBy: (() { final guardedValue = map['routeCreatedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeUuid: (() { final guardedValue = map['routeUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAgentPlatformAgentTemplate>(guardedValue, (value) => GetAgentPlatformAgentTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

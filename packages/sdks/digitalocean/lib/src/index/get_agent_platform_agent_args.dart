// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_platform_agent_agent_guardrail.dart';
import 'get_agent_platform_agent_anthropic_api_key.dart';
import 'get_agent_platform_agent_api_key.dart';
import 'get_agent_platform_agent_api_key_info.dart';
import 'get_agent_platform_agent_chatbot.dart';
import 'get_agent_platform_agent_chatbot_identifier.dart';
import 'get_agent_platform_agent_deployment.dart';
import 'get_agent_platform_agent_function.dart';
import 'get_agent_platform_agent_knowledge_base.dart';
import 'get_agent_platform_agent_model.dart';
import 'get_agent_platform_agent_open_ai_api_key.dart';
import 'get_agent_platform_agent_template.dart';

/// {@template pulumi_index_get_agent_platform_agent_get_agent_platform_agent_args_doc}
/// Arguments for getAgentPlatformAgent.
/// {@endtemplate}
/// {@macro pulumi_index_get_agent_platform_agent_get_agent_platform_agent_args_doc}
class GetAgentPlatformAgentArgs {
  final pulumi.Input<List<GetAgentPlatformAgentAgentGuardrail>?>? agentGuardrails;
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetAgentPlatformAgentAnthropicApiKey>?>? anthropicApiKeys;
  final pulumi.Input<List<GetAgentPlatformAgentApiKeyInfo>?>? apiKeyInfos;
  final pulumi.Input<List<GetAgentPlatformAgentApiKey>?>? apiKeys;
  final pulumi.Input<List<GetAgentPlatformAgentChatbotIdentifier>?>? chatbotIdentifiers;
  final pulumi.Input<List<GetAgentPlatformAgentChatbot>?>? chatbots;
  final pulumi.Input<List<GetAgentPlatformAgentDeployment>?>? deployments;
  final pulumi.Input<String?>? description;
  final pulumi.Input<List<GetAgentPlatformAgentFunction>?>? functions;
  final pulumi.Input<String?>? ifCase;
  final pulumi.Input<int?>? k;
  final pulumi.Input<List<GetAgentPlatformAgentKnowledgeBase>?>? knowledgeBases;
  final pulumi.Input<int?>? maxTokens;
  final pulumi.Input<List<GetAgentPlatformAgentModel>?>? models;
  final pulumi.Input<List<GetAgentPlatformAgentOpenAiApiKey>?>? openAiApiKeys;
  final pulumi.Input<String?>? retrievalMethod;
  final pulumi.Input<String?>? routeCreatedBy;
  final pulumi.Input<String?>? routeName;
  final pulumi.Input<String?>? routeUuid;
  final pulumi.Input<List<String>?>? tags;
  final pulumi.Input<double?>? temperature;
  final pulumi.Input<List<GetAgentPlatformAgentTemplate>?>? templates;
  final pulumi.Input<double?>? topP;
  final pulumi.Input<String?>? url;
  final pulumi.Input<String?>? userId;

  /// Creates a new [GetAgentPlatformAgentArgs].
  /// [agentGuardrails] Optional.
  /// [agentId] Required.
  /// [anthropicApiKeys] Optional.
  /// [apiKeyInfos] Optional.
  /// [apiKeys] Optional.
  /// [chatbotIdentifiers] Optional.
  /// [chatbots] Optional.
  /// [deployments] Optional.
  /// [description] Optional.
  /// [functions] Optional.
  /// [ifCase] Optional.
  /// [k] Optional.
  /// [knowledgeBases] Optional.
  /// [maxTokens] Optional.
  /// [models] Optional.
  /// [openAiApiKeys] Optional.
  /// [retrievalMethod] Optional.
  /// [routeCreatedBy] Optional.
  /// [routeName] Optional.
  /// [routeUuid] Optional.
  /// [tags] Optional.
  /// [temperature] Optional.
  /// [templates] Optional.
  /// [topP] Optional.
  /// [url] Optional.
  /// [userId] Optional.
  const GetAgentPlatformAgentArgs({
    this.agentGuardrails,
    required this.agentId,
    this.anthropicApiKeys,
    this.apiKeyInfos,
    this.apiKeys,
    this.chatbotIdentifiers,
    this.chatbots,
    this.deployments,
    this.description,
    this.functions,
    this.ifCase,
    this.k,
    this.knowledgeBases,
    this.maxTokens,
    this.models,
    this.openAiApiKeys,
    this.retrievalMethod,
    this.routeCreatedBy,
    this.routeName,
    this.routeUuid,
    this.tags,
    this.temperature,
    this.templates,
    this.topP,
    this.url,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentGuardrails': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentAgentGuardrail>, List<Map<String, dynamic>>>(agentGuardrails, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentAgentGuardrail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'agentId': agentId,
      'anthropicApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentAnthropicApiKey>, List<Map<String, dynamic>>>(anthropicApiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentAnthropicApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeyInfos': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentApiKeyInfo>, List<Map<String, dynamic>>>(apiKeyInfos, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentApiKeyInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentApiKey>, List<Map<String, dynamic>>>(apiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbotIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentChatbotIdentifier>, List<Map<String, dynamic>>>(chatbotIdentifiers, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentChatbotIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
      'chatbots': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentChatbot>, List<Map<String, dynamic>>>(chatbots, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentChatbot, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deployments': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentDeployment>, List<Map<String, dynamic>>>(deployments, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentDeployment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ifCase': ?ifCase,
      'k': ?k,
      'knowledgeBases': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentKnowledgeBase>, List<Map<String, dynamic>>>(knowledgeBases, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentKnowledgeBase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxTokens': ?maxTokens,
      'models': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'openAiApiKeys': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentOpenAiApiKey>, List<Map<String, dynamic>>>(openAiApiKeys, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentOpenAiApiKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates': ?pulumi.Input.mapOptionalInputValue<List<GetAgentPlatformAgentTemplate>, List<Map<String, dynamic>>>(templates, (value) => pulumi.Input.encodeList<GetAgentPlatformAgentTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'topP': ?topP,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetAgentPlatformAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformAgentArgs(
      agentGuardrails: (() { final guardedValue = map['agentGuardrails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentAgentGuardrail>(guardedValue, (value) => GetAgentPlatformAgentAgentGuardrail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      anthropicApiKeys: (() { final guardedValue = map['anthropicApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentAnthropicApiKey>(guardedValue, (value) => GetAgentPlatformAgentAnthropicApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeyInfos: (() { final guardedValue = map['apiKeyInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentApiKeyInfo>(guardedValue, (value) => GetAgentPlatformAgentApiKeyInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentApiKey>(guardedValue, (value) => GetAgentPlatformAgentApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbotIdentifiers: (() { final guardedValue = map['chatbotIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentChatbotIdentifier>(guardedValue, (value) => GetAgentPlatformAgentChatbotIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
      chatbots: (() { final guardedValue = map['chatbots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentChatbot>(guardedValue, (value) => GetAgentPlatformAgentChatbot.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deployments: (() { final guardedValue = map['deployments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentDeployment>(guardedValue, (value) => GetAgentPlatformAgentDeployment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functions: (() { final guardedValue = map['functions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentFunction>(guardedValue, (value) => GetAgentPlatformAgentFunction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ifCase: (() { final guardedValue = map['ifCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      k: (() { final guardedValue = map['k']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      knowledgeBases: (() { final guardedValue = map['knowledgeBases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentKnowledgeBase>(guardedValue, (value) => GetAgentPlatformAgentKnowledgeBase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxTokens: (() { final guardedValue = map['maxTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      models: (() { final guardedValue = map['models']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentModel>(guardedValue, (value) => GetAgentPlatformAgentModel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      openAiApiKeys: (() { final guardedValue = map['openAiApiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentOpenAiApiKey>(guardedValue, (value) => GetAgentPlatformAgentOpenAiApiKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      retrievalMethod: (() { final guardedValue = map['retrievalMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeCreatedBy: (() { final guardedValue = map['routeCreatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeName: (() { final guardedValue = map['routeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeUuid: (() { final guardedValue = map['routeUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      temperature: (() { final guardedValue = map['temperature']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      templates: (() { final guardedValue = map['templates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentPlatformAgentTemplate>(guardedValue, (value) => GetAgentPlatformAgentTemplate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      topP: (() { final guardedValue = map['topP']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

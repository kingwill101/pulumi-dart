// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_genai_agent_agent_guardrail.dart';
import 'get_genai_agent_anthropic_api_key.dart';
import 'get_genai_agent_api_key.dart';
import 'get_genai_agent_api_key_info.dart';
import 'get_genai_agent_chatbot.dart';
import 'get_genai_agent_chatbot_identifier.dart';
import 'get_genai_agent_deployment.dart';
import 'get_genai_agent_function.dart';
import 'get_genai_agent_knowledge_base.dart';
import 'get_genai_agent_model.dart';
import 'get_genai_agent_open_ai_api_key.dart';
import 'get_genai_agent_template.dart';

/// {@template pulumi_index_get_genai_agent_get_genai_agent_args_doc}
/// Arguments for getGenaiAgent.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_agent_get_genai_agent_args_doc}
class GetGenaiAgentArgs {
  final pulumi.Input<List<GetGenaiAgentAgentGuardrail>>? agentGuardrails;
  final pulumi.Input<String> agentId;
  final pulumi.Input<List<GetGenaiAgentAnthropicApiKey>>? anthropicApiKeys;
  final pulumi.Input<List<GetGenaiAgentApiKeyInfo>>? apiKeyInfos;
  final pulumi.Input<List<GetGenaiAgentApiKey>>? apiKeys;
  final pulumi.Input<List<GetGenaiAgentChatbotIdentifier>>? chatbotIdentifiers;
  final pulumi.Input<List<GetGenaiAgentChatbot>>? chatbots;
  final pulumi.Input<List<GetGenaiAgentDeployment>>? deployments;
  final pulumi.Input<String>? description;
  final pulumi.Input<List<GetGenaiAgentFunction>>? functions;
  final pulumi.Input<String>? ifCase;
  final pulumi.Input<int>? k;
  final pulumi.Input<List<GetGenaiAgentKnowledgeBase>>? knowledgeBases;
  final pulumi.Input<int>? maxTokens;
  final pulumi.Input<List<GetGenaiAgentModel>>? models;
  final pulumi.Input<List<GetGenaiAgentOpenAiApiKey>>? openAiApiKeys;
  final pulumi.Input<String>? retrievalMethod;
  final pulumi.Input<String>? routeCreatedBy;
  final pulumi.Input<String>? routeName;
  final pulumi.Input<String>? routeUuid;
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<double>? temperature;
  final pulumi.Input<List<GetGenaiAgentTemplate>>? templates;
  final pulumi.Input<double>? topP;
  final pulumi.Input<String>? url;
  final pulumi.Input<String>? userId;

  /// Creates a new [GetGenaiAgentArgs].
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
  GetGenaiAgentArgs({
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
      'agentGuardrails':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentAgentGuardrail>,
            List<Map<String, dynamic>>
          >(
            agentGuardrails,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentAgentGuardrail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'agentId': agentId,
      'anthropicApiKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentAnthropicApiKey>,
            List<Map<String, dynamic>>
          >(
            anthropicApiKeys,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentAnthropicApiKey,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'apiKeyInfos':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentApiKeyInfo>,
            List<Map<String, dynamic>>
          >(
            apiKeyInfos,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentApiKeyInfo,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'apiKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentApiKey>,
            List<Map<String, dynamic>>
          >(
            apiKeys,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentApiKey,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'chatbotIdentifiers':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentChatbotIdentifier>,
            List<Map<String, dynamic>>
          >(
            chatbotIdentifiers,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentChatbotIdentifier,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'chatbots':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentChatbot>,
            List<Map<String, dynamic>>
          >(
            chatbots,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentChatbot,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'deployments':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentDeployment>,
            List<Map<String, dynamic>>
          >(
            deployments,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentDeployment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'functions':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentFunction>,
            List<Map<String, dynamic>>
          >(
            functions,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentFunction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ifCase': ?ifCase,
      'k': ?k,
      'knowledgeBases':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentKnowledgeBase>,
            List<Map<String, dynamic>>
          >(
            knowledgeBases,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentKnowledgeBase,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'maxTokens': ?maxTokens,
      'models':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentModel>,
            List<Map<String, dynamic>>
          >(
            models,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentModel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'openAiApiKeys':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentOpenAiApiKey>,
            List<Map<String, dynamic>>
          >(
            openAiApiKeys,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentOpenAiApiKey,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'retrievalMethod': ?retrievalMethod,
      'routeCreatedBy': ?routeCreatedBy,
      'routeName': ?routeName,
      'routeUuid': ?routeUuid,
      'tags': ?tags,
      'temperature': ?temperature,
      'templates':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetGenaiAgentTemplate>,
            List<Map<String, dynamic>>
          >(
            templates,
            (value) =>
                pulumi.Input.encodeList<
                  GetGenaiAgentTemplate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'topP': ?topP,
      'url': ?url,
      'userId': ?userId,
    };
  }

  factory GetGenaiAgentArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentArgs(
      agentGuardrails: (() {
        final guardedValue = map['agentGuardrails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentAgentGuardrail>(
            guardedValue,
            (value) => GetGenaiAgentAgentGuardrail.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      anthropicApiKeys: (() {
        final guardedValue = map['anthropicApiKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentAnthropicApiKey>(
            guardedValue,
            (value) => GetGenaiAgentAnthropicApiKey.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      apiKeyInfos: (() {
        final guardedValue = map['apiKeyInfos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentApiKeyInfo>(
            guardedValue,
            (value) => GetGenaiAgentApiKeyInfo.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      apiKeys: (() {
        final guardedValue = map['apiKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentApiKey>(
            guardedValue,
            (value) => GetGenaiAgentApiKey.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      chatbotIdentifiers: (() {
        final guardedValue = map['chatbotIdentifiers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentChatbotIdentifier>(
            guardedValue,
            (value) => GetGenaiAgentChatbotIdentifier.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      chatbots: (() {
        final guardedValue = map['chatbots'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentChatbot>(
            guardedValue,
            (value) => GetGenaiAgentChatbot.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      deployments: (() {
        final guardedValue = map['deployments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentDeployment>(
            guardedValue,
            (value) => GetGenaiAgentDeployment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functions: (() {
        final guardedValue = map['functions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentFunction>(
            guardedValue,
            (value) => GetGenaiAgentFunction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ifCase: (() {
        final guardedValue = map['ifCase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      k: (() {
        final guardedValue = map['k'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      knowledgeBases: (() {
        final guardedValue = map['knowledgeBases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentKnowledgeBase>(
            guardedValue,
            (value) => GetGenaiAgentKnowledgeBase.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      maxTokens: (() {
        final guardedValue = map['maxTokens'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      models: (() {
        final guardedValue = map['models'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentModel>(
            guardedValue,
            (value) => GetGenaiAgentModel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      openAiApiKeys: (() {
        final guardedValue = map['openAiApiKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentOpenAiApiKey>(
            guardedValue,
            (value) => GetGenaiAgentOpenAiApiKey.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      retrievalMethod: (() {
        final guardedValue = map['retrievalMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeCreatedBy: (() {
        final guardedValue = map['routeCreatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeName: (() {
        final guardedValue = map['routeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeUuid: (() {
        final guardedValue = map['routeUuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      temperature: (() {
        final guardedValue = map['temperature'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      templates: (() {
        final guardedValue = map['templates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetGenaiAgentTemplate>(
            guardedValue,
            (value) => GetGenaiAgentTemplate.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      topP: (() {
        final guardedValue = map['topP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
